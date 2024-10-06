package com.sky.controller.user;

import com.sky.context.BaseContext;
import com.sky.dto.CommentDTO;
import com.sky.dto.SentencePageQueryDTO;
import com.sky.dto.ThumbsUpOrCollectDTO;
import com.sky.entity.Sentence;
import com.sky.mapper.SentenceMapper;
import com.sky.result.PageResult;
import com.sky.result.Result;
import com.sky.service.SentenceService;
import com.sky.vo.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.*;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/user/sentence")
@Slf4j
@Api(tags = "小程序-句子接口")
public class SentenceController {
    @Autowired
    private SentenceService sentenceService;

    @Autowired
    private SentenceMapper sentenceMapper;



    @PutMapping("/category/{category}")
    @ApiOperation("根据分类查找")
    public Result<List<SentenceVO>> sentenceByCategory(@PathVariable String category) {

        List<SentenceVO> sentenceVOList = sentenceService.sentenceByCategory(category);
        return Result.success(sentenceVOList);
    }

    @PutMapping("/sixCategory")
    @ApiOperation("推荐六个分类")
    public Result<List<CategoryVO>> Category() {

        List<CategoryVO> CategoryVOList = sentenceService.categoryAll();
        List<CategoryVO> CategoryVOListSmall = new ArrayList<>();

        Random random = new Random();
        Set<Integer> set = new HashSet<>();
        while (set.size() < 6) {
            int randomNumber = random.nextInt(CategoryVOList.size());
            set.add(randomNumber);
        }
        for (Integer i : set) {
            CategoryVOListSmall.add(CategoryVOList.get(i));
        }
        return Result.success(CategoryVOListSmall);
    }


    @PutMapping("/album")
    @ApiOperation("查找专辑")
    public Result<List<AlbumVO>> sentenceByCategory() {

        List<AlbumVO> sentenceVOList = sentenceService.sentenceByAlbum();
        return Result.success(sentenceVOList);
    }

    @PutMapping("/albumCategory/{categoryId}")
    @ApiOperation("查找专辑分类详细")
    public Result<CategoryVO> sentenceByCategory(@PathVariable int categoryId) {

//        List<SentenceVO> sentenceVOList = sentenceService.sentenceByCategoryId(categoryId);
//
//        CategoryVO categoryVO = sentenceService.categoryByCategoryId(categoryId);
//
//        List<Sentence> sentenceList = new ArrayList<>();
//
//        for (SentenceVO sentenceVO : sentenceVOList) {
//            Sentence sentence = new Sentence();
//
//            BeanUtils.copyProperties(sentenceVO, sentence);
//
//            sentenceList.add(sentence);
//        }
//        categoryVO.setSentenceList(sentenceList);
//
//        return Result.success(categoryVO);
        List<SentenceVO> sentenceVOList = Optional.ofNullable(sentenceService.sentenceByCategoryId(categoryId))
                .orElse(Collections.emptyList());

        CategoryVO categoryVO = Optional.ofNullable(sentenceService.categoryByCategoryId(categoryId)).
                orElse(new CategoryVO());

        List<Sentence> sentenceList = sentenceVOList.stream()
                .map(sentenceVO -> {
                    Sentence sentence = new Sentence();
                    BeanUtils.copyProperties(sentenceVO, sentence);
                    return sentence;
                })
                .collect(Collectors.toList());

        categoryVO.setSentenceList(sentenceList);
        return Result.success(categoryVO);
    }

    @PutMapping("/findAll")
    @ApiOperation("沉浸阅读查询所有句子")
    public Result<List<SentenceVO>> sentenceFindAll() {

        List<SentenceVO> sentenceVOList = sentenceService.sentenceByCategory(null);
        return Result.success(sentenceVOList);

    }

    @PutMapping("/findTop10")
    @ApiOperation("查询热度前十句子")
    public Result<List<SentenceVO>> sentenceFindTop10() {

        List<SentenceVO> sentenceVOList = sentenceService.sentenceByCategory(null);
        List<SentenceVO> top10LikedSentences = sentenceVOList.stream()
                .sorted(Comparator.comparingInt(SentenceVO::getLikeNum).reversed())
                .limit(10)
                .collect(Collectors.toList());
        List<Integer> sentenceIdList = sentenceMapper.likedSentenceIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(sentenceId -> sentenceId != null)
                .collect(Collectors.toList());
        List<Integer> favoriteSentenceIdlist = sentenceMapper.favoriteSentenceIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(sentenceIds -> sentenceIds != null)
                .collect(Collectors.toList());

        for (SentenceVO sentenceVO : top10LikedSentences) {
            if (sentenceIdList.contains(sentenceVO.getSentenceId())) {
                sentenceVO.setLogo(1);
                // 在列表中找到了目标sentenceId
            }
            if (favoriteSentenceIdlist.contains(sentenceVO.getSentenceId())) {
                sentenceVO.setJudge(1);
                // 在列表中找到了目标sentenceId
            }
        }


        return Result.success(top10LikedSentences);

    }

    @PutMapping("/find10")
    @ApiOperation("每日精选")
    public Result<List<SentenceVO>> sentenceFindTen() {

       /* List<SentenceVO> sentenceVOList = sentenceService.sentenceByCategoryId(1);
        List<SentenceVO> sentenceVOListSmall = new ArrayList<>();
        Random random = new Random();
        Set<Integer> set = new HashSet<>();
        while (set.size() < 10) {
            int randomNumber = random.nextInt(sentenceVOList.size());
            set.add(randomNumber);
        }
        for (Integer i : set) {
            sentenceVOListSmall.add(sentenceVOList.get(i));
        }

        return Result.success(sentenceVOListSmall);*/
        List<SentenceVO> sentenceVOList = Optional.ofNullable(sentenceService.sentenceByCategoryId(1)).orElse(Collections.emptyList());
        List<SentenceVO> sentenceVOListSmall = ThreadLocalRandom.current().ints(0, sentenceVOList.size()).distinct().limit(10)
                .mapToObj(sentenceVOList::get)
                .collect(Collectors.toList());

        List<Integer> sentenceIdList = sentenceMapper.likedSentenceIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(sentenceId -> sentenceId != null)
                .collect(Collectors.toList());
        List<Integer> favoriteSentenceIdlist = sentenceMapper.favoriteSentenceIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(sentenceIds -> sentenceIds != null)
                .collect(Collectors.toList());

        for (SentenceVO sentenceVO : sentenceVOListSmall) {
            if (sentenceIdList.contains(sentenceVO.getSentenceId())) {
                sentenceVO.setLogo(1);
                // 在列表中找到了目标sentenceId
            } if (favoriteSentenceIdlist.contains(sentenceVO.getSentenceId())) {
                sentenceVO.setJudge(1);
                // 在列表中找到了目标sentenceId
            }
        }

        return Result.success(sentenceVOListSmall);

    }

    @PutMapping("/findName/{name}")
    @ApiOperation("搜索句子")
    public Result<List<SentenceVO>> sentenceFind(@PathVariable String name) {

        List<SentenceVO> sentenceVOList = sentenceService.sentenceByName(name);
        List<Integer> sentenceIdList = sentenceMapper.likedSentenceIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(sentenceId -> sentenceId != null)
                .collect(Collectors.toList());
        List<Integer> favoriteSentenceIdlist = sentenceMapper.favoriteSentenceIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(sentenceIds -> sentenceIds != null)
                .collect(Collectors.toList());
        for (SentenceVO sentenceVO : sentenceVOList) {
            if (sentenceIdList.contains(sentenceVO.getSentenceId())) {
                sentenceVO.setLogo(1);
                // 在列表中找到了目标sentenceId
            }
            if (favoriteSentenceIdlist.contains(sentenceVO.getSentenceId())) {
                sentenceVO.setJudge(1);
                // 在列表中找到了目标sentenceId
            }
        }
        return Result.success(sentenceVOList);

    }


    @GetMapping("/page")
    @ApiOperation("分页查询")
    public Result<PageResult> page(SentencePageQueryDTO sentencePageQueryDTO) {


        PageResult pageResult = sentenceService.pageQuery(sentencePageQueryDTO);

        return Result.success(pageResult);
    }

    @PostMapping("/detail/{sentenceId}")
    @ApiOperation("查看句子详细")
    public Result<SentenceDetailVO> sentenceDetail(@PathVariable int sentenceId) {

        SentenceDetailVO sentenceDetail = sentenceService.sentenceDetail(sentenceId);


        return Result.success(sentenceDetail);
    }

    @PostMapping("/ThumbsUp")
    @ApiOperation("点赞")
    public Result<ThumbsUpVO> ThumbsUp(@RequestBody ThumbsUpOrCollectDTO thumbsUpDTO) {


        ThumbsUpVO thumbsUpVO = sentenceService.ThumbsUp(thumbsUpDTO);

        return Result.success(thumbsUpVO);

    }


    @PostMapping("/collect")
    @ApiOperation("收藏")
    public Result<ThumbsUpVO> collect(@RequestBody ThumbsUpOrCollectDTO thumbsUpDTO) {

        ThumbsUpVO thumbsUpVO = sentenceService.collect(thumbsUpDTO);

        return Result.success(thumbsUpVO);
    }

    @PostMapping("/comment")
    @ApiOperation("评论")
    public Result comment(@RequestBody CommentDTO commentDTO) {

        String msg = sentenceService.comment(commentDTO);

        return Result.success(msg);
    }


}
