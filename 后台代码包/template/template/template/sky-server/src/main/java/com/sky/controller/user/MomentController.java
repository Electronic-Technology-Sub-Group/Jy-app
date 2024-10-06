package com.sky.controller.user;

import com.sky.dto.CommentDTO;
import com.sky.dto.MomentDto;
import com.sky.dto.MomentPageQueryDTO;
import com.sky.dto.ThumbsUpOrCollectDTO;
import com.sky.entity.MomentCategory;
import com.sky.mapper.MomentMapper;
import com.sky.result.PageResult;
import com.sky.result.Result;
import com.sky.service.MomentService;
import com.sky.vo.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/user/moment")
@Slf4j
@Api(tags = "小程序-动态接口")
public class MomentController {
    @Autowired
    private MomentService momentService;

    @Autowired
    private MomentMapper momentMapper;

    @PutMapping("/{momentId}")
    @ApiOperation("查看动态详细内容")
    public Result<MomentVO> FindBYMomentId(@PathVariable int momentId) {

        MomentVO momentVO = momentService.FindBYMomentId(momentId);

        return Result.success(momentVO);
    }


    @PutMapping("/addMoment")
    @ApiOperation("添加动态")
    public Result addMoment(@RequestBody MomentDto momentDto) {
        // userId
        // momentContent
        // momentPicture
        momentService.addMoment(momentDto);

        return Result.success();
    }
    @PutMapping("/dropMoment/{momentId}")
    @ApiOperation("删除动态")
    public Result dropMoment(@PathVariable int momentId) {

        momentService.dropMoment(momentId);

        return Result.success();
    }

    @GetMapping("/page")
    @ApiOperation("分页查询")
    public Result<PageResult> page(MomentPageQueryDTO momentDTO) {


        PageResult pageResult = momentService.pageQuery(momentDTO);
        //PageResult pageResult = new PageResult(page.getTotal(), page.getRecords());
        return Result.success(pageResult);
    }

    @PutMapping("/album")
    @ApiOperation("查找话题专辑")
    public Result<List<TopicAlbumVO>> CategoryByTopicAlbum() {

        List<TopicAlbumVO> List = momentService.CategoryByTopicAlbum();
        return Result.success(List);
    }

    @PutMapping("/sixMomentCategory")
    @ApiOperation("推荐6个话题专辑")
    public Result<List<MomentCategory>> sixMomentCategory() {

        List<MomentCategory> momentCategoryList = momentMapper.CategoryAll();
        List<MomentCategory> sixList;
        if (momentCategoryList.size() >= 6) {
            Collections.shuffle(momentCategoryList);
            sixList = momentCategoryList.subList(0, 6);
            return Result.success(sixList);
        } else {

            return Result.success(momentCategoryList);
        }
    }

    @PutMapping("/TopTenMomentCategory")
    @ApiOperation("Top10个话题专辑")
    public Result<List<TopTenMomentCategoryVO>> TopTenMomentCategory() {


        List<MomentCategory> momentCategoryList = momentMapper.CategoryAll();

        List<TopTenMomentCategoryVO> topTenMomentCategoryVOList = momentCategoryList.stream()
                .map(momentCategory -> {
                    TopTenMomentCategoryVO topTenMomentCategoryVO = new TopTenMomentCategoryVO();
                    topTenMomentCategoryVO.setMomentCategory(momentCategory);
                    topTenMomentCategoryVO.setNum(momentMapper.momentNumByCategoryId(momentCategory.getCategoryId()));
                    return topTenMomentCategoryVO;
                })
                .collect(Collectors.toList());

        List<TopTenMomentCategoryVO> sortedList = topTenMomentCategoryVOList.stream()
                .sorted(Comparator.comparingInt(TopTenMomentCategoryVO::getNum).reversed())
                .limit(10)
                .collect(Collectors.toList());

        return Result.success(sortedList);

    }


    @PutMapping("/albumCategory/{categoryId}")
    @ApiOperation("查找话题专辑分类详细")
    public Result<MomentCategoryVO> sentenceByCategory(@PathVariable int categoryId) {

        List<MomentAllVO> momentList = momentService.MomentAllVOByCategoryId(categoryId);

        MomentCategoryVO categoryVO = momentService.categoryByCategoryId(categoryId);


        categoryVO.setMomentList(momentList);

        return Result.success(categoryVO);
    }


    @PostMapping("/ThumbsUp")
    @ApiOperation("点赞")
    public Result<ThumbsUpVO> ThumbsUp(@RequestBody ThumbsUpOrCollectDTO thumbsUpDTO) {

        ThumbsUpVO thumbsUpVO = momentService.ThumbsUp(thumbsUpDTO);

        return Result.success(thumbsUpVO);

    }


    @PostMapping("/comment")
    @ApiOperation("评论")
    public Result comment(@RequestBody CommentDTO commentDTO) {

        String msg = momentService.comment(commentDTO);

        return Result.success(msg);
    }

}
