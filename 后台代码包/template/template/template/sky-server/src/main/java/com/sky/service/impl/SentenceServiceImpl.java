package com.sky.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sky.context.BaseContext;
import com.sky.dto.CommentDTO;
import com.sky.dto.SentencePageQueryDTO;
import com.sky.dto.ThumbsUpOrCollectDTO;
import com.sky.entity.Comment;
import com.sky.entity.Favorites;
import com.sky.entity.Likes;
import com.sky.entity.Sentence;
import com.sky.exception.BaseException;
import com.sky.mapper.MomentMapper;
import com.sky.mapper.SentenceMapper;
import com.sky.mapper.UserMapper;
import com.sky.result.PageResult;
import com.sky.service.SentenceService;
import com.sky.vo.*;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class SentenceServiceImpl implements SentenceService {

    @Autowired
    private SentenceMapper sentenceMapper;

    @Autowired
    private MomentMapper momentMapper;

    @Autowired
    private UserMapper userMapper;

    /**
     * 根据分类获取句子列表
     *
     * @param category
     * @return
     */
    @Override

    public List<SentenceVO> sentenceByCategory(String category) {
        // 通过分类查询 句子列表
        List<Sentence> sentenceList = sentenceMapper.sentenceByCategory(category);

//-----------------------------------------------------------------------------------
        List<Integer> sentenceIdList = sentenceMapper.likedSentenceIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(sentenceId -> sentenceId != null)
                .collect(Collectors.toList());
//-----------------------------------------------------------------------------------
        List<Integer> favoriteSentenceIdlist = sentenceMapper.favoriteSentenceIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(sentenceIds -> sentenceIds != null)
                .collect(Collectors.toList());

        // 创建句子VO对象列表
        List<SentenceVO> sentenceVOList = new ArrayList<>();
        // 遍历句子列表
        for (Sentence sentence : sentenceList) {
            // 创建句子VO对象
            SentenceVO sentenceVO = new SentenceVO();
            // 将句子属性 拷贝到 句子VO对象中
            BeanUtils.copyProperties(sentence, sentenceVO);

            // 获取句子ID
            int sentenceId = sentence.getSentenceId();
//-----------------------------------------------------------------------------------
            if (sentenceIdList.contains(sentenceId)) {
                sentenceVO.setLogo(1);
                // 在列表中找到了目标sentenceId
            }
            if (favoriteSentenceIdlist.contains(sentenceId)) {
                sentenceVO.setJudge(1);
                // 在列表中找到了目标sentenceId
            }
//-----------------------------------------------------------------------------------


            // 通过句子ID查询出处列表
            List<String> derivationList = sentenceMapper.derivationBySentenceId(sentenceId);
            // 设置句子VO对象的出处列表
            sentenceVO.setDerivation(derivationList);

            // 通过句子ID查询点赞数
            int likeNum = sentenceMapper.likeNumBySentenceId(sentenceId);
            // 设置句子VO对象的点赞数
            sentenceVO.setLikeNum(likeNum);

            // 通过句子ID查询收藏数
            int favoriteNum = sentenceMapper.favoriteNumBySentenceId(sentenceId);
            // 设置句子VO对象的收藏数
            sentenceVO.setFavoriteNum(favoriteNum);

            // 通过句子ID查询评论数
            int commentNum = sentenceMapper.commentNumBySentenceId(sentenceId);
            // 设置句子VO对象的评论数
            sentenceVO.setCommentNum(commentNum);

            // 将句子VO对象加入列表
            sentenceVOList.add(sentenceVO);
        }
        // 返回句子VO对象列表
        return sentenceVOList;
    }

    @Override
    public PageResult pageQuery(SentencePageQueryDTO sentencePageQueryDTO) {
        // 使用PageHelper进行分页
        PageHelper.startPage(sentencePageQueryDTO.getPage(), sentencePageQueryDTO.getPageSize());
        List<SentenceVO> sentenceVOList = new ArrayList<>();
        List<Sentence> sentenceList = sentenceMapper.sentenceAll();

        List<Integer> sentenceIdList = sentenceMapper.likedSentenceIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(sentenceId -> sentenceId != null)
                .collect(Collectors.toList());
        List<Integer> favoriteSentenceIdlist = sentenceMapper.favoriteSentenceIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(sentenceIds -> sentenceIds != null)
                .collect(Collectors.toList());

        // 遍历句子列表
        for (Sentence sentence : sentenceList) {
            // 创建句子VO对象
            SentenceVO sentenceVO = new SentenceVO();
            // 将句子属性 拷贝到 句子VO对象中
            BeanUtils.copyProperties(sentence, sentenceVO);

            // 获取句子ID
            int sentenceId = sentence.getSentenceId();
            if (sentenceIdList.contains(sentenceId)) {
                sentenceVO.setLogo(1);
                // 在列表中找到了目标sentenceId
            }
            if (favoriteSentenceIdlist.contains(sentenceId)) {
                sentenceVO.setJudge(1);
                // 在列表中找到了目标sentenceId
            }
            // 通过句子ID查询出处列表
            List<String> derivationList = sentenceMapper.derivationBySentenceId(sentenceId);
            // 设置句子VO对象的出处列表
            sentenceVO.setDerivation(derivationList);

            // 通过句子ID查询点赞数
            int likeNum = sentenceMapper.likeNumBySentenceId(sentenceId);
            // 设置句子VO对象的点赞数
            sentenceVO.setLikeNum(likeNum);

            // 通过句子ID查询收藏数
            int favoriteNum = sentenceMapper.favoriteNumBySentenceId(sentenceId);
            // 设置句子VO对象的收藏数
            sentenceVO.setFavoriteNum(favoriteNum);

            // 通过句子ID查询评论数
            int commentNum = sentenceMapper.commentNumBySentenceId(sentenceId);
            // 设置句子VO对象的评论数
            sentenceVO.setCommentNum(commentNum);

            // 将句子VO对象加入列表
            sentenceVOList.add(sentenceVO);
        }
        // 将结果封装为PageResult对象并返回
        PageInfo<SentenceVO> pageInfo = new PageInfo<>(sentenceVOList);
        int i = (int) pageInfo.getTotal();
        if (i == 0) {
            throw new BaseException("到底了");
        }
        return new PageResult(pageInfo.getTotal(), pageInfo.getList());
    }

    @Override
    public List<SentenceVO> sentenceByName(String name) {
        name = "%" + name + "%";
        // 通过分类查询 句子列表
        List<Sentence> sentenceList = sentenceMapper.sentenceByName(name);
        // 创建句子VO对象列表
        List<SentenceVO> sentenceVOList = new ArrayList<>();
        // 遍历句子列表
        for (Sentence sentence : sentenceList) {
            // 创建句子VO对象
            SentenceVO sentenceVO = new SentenceVO();
            // 将句子属性 拷贝到 句子VO对象中
            BeanUtils.copyProperties(sentence, sentenceVO);

            // 获取句子ID
            int sentenceId = sentence.getSentenceId();

            // 通过句子ID查询出处列表
            List<String> derivationList = sentenceMapper.derivationBySentenceId(sentenceId);
            // 设置句子VO对象的出处列表
            sentenceVO.setDerivation(derivationList);

            // 通过句子ID查询点赞数
            int likeNum = sentenceMapper.likeNumBySentenceId(sentenceId);
            // 设置句子VO对象的点赞数
            sentenceVO.setLikeNum(likeNum);

            // 通过句子ID查询收藏数
            int favoriteNum = sentenceMapper.favoriteNumBySentenceId(sentenceId);
            // 设置句子VO对象的收藏数
            sentenceVO.setFavoriteNum(favoriteNum);

            // 通过句子ID查询评论数
            int commentNum = sentenceMapper.commentNumBySentenceId(sentenceId);
            // 设置句子VO对象的评论数
            sentenceVO.setCommentNum(commentNum);

            // 将句子VO对象加入列表
            sentenceVOList.add(sentenceVO);
        }
        // 返回句子VO对象列表
        return sentenceVOList;

    }

    @Override
    public List<SentenceVO> sentenceByCategoryId(int i) {
        // 通过分类查询 句子列表
        List<Sentence> sentenceList = sentenceMapper.sentenceByCategoryId(i);
        // 创建句子VO对象列表
        List<SentenceVO> sentenceVOList = new ArrayList<>();
        // 遍历句子列表
        for (Sentence sentence : sentenceList) {
            // 创建句子VO对象
            SentenceVO sentenceVO = new SentenceVO();
            // 将句子属性 拷贝到 句子VO对象中
            BeanUtils.copyProperties(sentence, sentenceVO);

            // 获取句子ID
            int sentenceId = sentence.getSentenceId();

            // 通过句子ID查询出处列表
            List<String> derivationList = sentenceMapper.derivationBySentenceId(sentenceId);
            // 设置句子VO对象的出处列表
            sentenceVO.setDerivation(derivationList);

            // 通过句子ID查询点赞数
            int likeNum = sentenceMapper.likeNumBySentenceId(sentenceId);
            // 设置句子VO对象的点赞数
            sentenceVO.setLikeNum(likeNum);

            // 通过句子ID查询收藏数
            int favoriteNum = sentenceMapper.favoriteNumBySentenceId(sentenceId);
            // 设置句子VO对象的收藏数
            sentenceVO.setFavoriteNum(favoriteNum);

            // 通过句子ID查询评论数
            int commentNum = sentenceMapper.commentNumBySentenceId(sentenceId);
            // 设置句子VO对象的评论数
            sentenceVO.setCommentNum(commentNum);

            // 将句子VO对象加入列表
            sentenceVOList.add(sentenceVO);
        }
        // 返回句子VO对象列表
        return sentenceVOList;
    }

    @Override
    public List<AlbumVO> sentenceByAlbum() {
        List<String> albumNameList = sentenceMapper.albumName();
        List<AlbumVO> albumVOList = new ArrayList<>();

        for (String albumName : albumNameList) {
            AlbumVO albumVO = new AlbumVO();
            albumVO.setAlbumName(albumName);
            List<CategoryVO> categoryVOList = sentenceMapper.categoryVOByAlbumVOName(albumName);
//            for (CategoryVO categoryVO : categoryVOList) {
//                List<Sentence> sentenceList = sentenceMapper.sentenceByCategoryId(categoryVO.getCategoryId());
//                categoryVO.setSentenceList(sentenceList);
//            }

            albumVO.setCategoryVOList(categoryVOList);
            albumVOList.add(albumVO);
        }


        return albumVOList;
    }

    @Override
    public CategoryVO categoryByCategoryId(int categoryId) {

        return sentenceMapper.categoryByCategoryId(categoryId);

    }

    @Override
    public List<CategoryVO> categoryAll() {

        return sentenceMapper.categoryAll();

    }


    /**
     * 根据句子ID获取句子详情
     *
     * @param sentenceId 句子ID
     * @return 句子详情视图对象
     */
    public SentenceDetailVO sentenceDetail(int sentenceId) {


        // 创建句子详情视图对象
        SentenceDetailVO sentenceDetailVO = new SentenceDetailVO();

        // 根据句子ID从数据库中获取句子对象
        Sentence sentence = sentenceMapper.sentenceBySentenceId(sentenceId);
        // 将句子对象的属性复制到句子详情视图对象中
        BeanUtils.copyProperties(sentence, sentenceDetailVO);

        List<Integer> sentenceIdList = sentenceMapper.likedSentenceIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(sentenceIds -> sentenceIds != null)
                .collect(Collectors.toList());


        if (sentenceIdList.contains(sentenceId)) {
            sentenceDetailVO.setLogo(1);
            // 在列表中找到了目标sentenceId
        }
        List<Integer> favoriteSentenceIdlist = sentenceMapper.favoriteSentenceIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(sentenceIds -> sentenceIds != null)
                .collect(Collectors.toList());
        if (favoriteSentenceIdlist.contains(sentenceId)) {
            sentenceDetailVO.setJudge(1);
            // 在列表中找到了目标sentenceId
        }


        // 根据句子ID从数据库中获取句子的推导列表
        List<String> derivationList = sentenceMapper.derivationBySentenceId(sentenceId);
        // 设置句子详情视图对象的推导列表属性
        sentenceDetailVO.setDerivation(derivationList);

        // 根据句子ID从数据库中获取句子的点赞数
        int likeNum = sentenceMapper.likeNumBySentenceId(sentenceId);
        // 设置句子详情视图对象的点赞数属性
        sentenceDetailVO.setLikeNum(likeNum);

        // 根据句子ID从数据库中获取句子的收藏数
        int favoriteNum = sentenceMapper.favoriteNumBySentenceId(sentenceId);
        // 设置句子详情视图对象的收藏数属性
        sentenceDetailVO.setFavoriteNum(favoriteNum);

        // 获取句子的评论列表
        List<Comment> commentList = commentList(sentenceId);
        // 设置句子详情视图对象的评论列表属性
        sentenceDetailVO.setCommentList(commentList);

        // 返回句子详情视图对象
        return sentenceDetailVO;
    }

    // 点赞方法的实现
    @Override
    public ThumbsUpVO ThumbsUp(ThumbsUpOrCollectDTO thumbsUpOrCollectDTO) {


        Long currentId =
                thumbsUpOrCollectDTO.getUserId();
        //BaseContext.getCurrentId();
        int likeNum = sentenceMapper.likeNumByUserId(currentId);
        ThumbsUpVO thumbsUpVO = new ThumbsUpVO();
        // 调用句子映射器的查找点赞方法，传入点赞或收藏DTO对象，返回点赞对象
        Likes likes = sentenceMapper.lookThumbsUP(thumbsUpOrCollectDTO);
        // 如果点赞对象不为空
        if (likes != null) {
            // 调用句子映射器的取消点赞方法，传入点赞或收藏DTO对象
            sentenceMapper.unThumbsUp(thumbsUpOrCollectDTO);
            // 返回"取消点赞"
            thumbsUpVO.setMsg("取消点赞");


            thumbsUpVO.setNum(likeNum - 1);


            //todo


            List<Integer> sentenceIdList = userMapper.sentenceIdListByUserId(currentId);
            List<Sentence> sentenceList;
            if (sentenceIdList.size() > 0 && sentenceIdList != null) {
                sentenceList = userMapper.sentenceListBySentenceIdList(sentenceIdList);
                thumbsUpVO.setSentenceList(sentenceList);

                for (int i = 0; i < thumbsUpVO.getSentenceList().size(); i++) {
                    List<String> derivation = userMapper.derivationListBYSentenceId(thumbsUpVO.getSentenceList().get(i).getSentenceId());
                    thumbsUpVO.getSentenceList().get(i).setDerivation(derivation);
                }
            } else {
                thumbsUpVO.setSentenceList(null);
            }


            return thumbsUpVO;
        }
        // 调用句子映射器的点赞方法，传入点赞或收藏DTO对象
        sentenceMapper.ThumbsUp(thumbsUpOrCollectDTO);


        // 返回"点赞成功"
        thumbsUpVO.setMsg("点赞成功");

        thumbsUpVO.setNum(likeNum + 1);

        List<Integer> sentenceIdList = userMapper.sentenceIdListByUserId(currentId);
        List<Sentence> sentenceList;
        if (sentenceIdList.size() > 0 && sentenceIdList != null) {
            sentenceList = userMapper.sentenceListBySentenceIdList(sentenceIdList);
            thumbsUpVO.setSentenceList(sentenceList);

            for (int i = 0; i < thumbsUpVO.getSentenceList().size(); i++) {
                List<String> derivation = userMapper.derivationListBYSentenceId(thumbsUpVO.getSentenceList().get(i).getSentenceId());
                thumbsUpVO.getSentenceList().get(i).setDerivation(derivation);
            }
        } else {
            thumbsUpVO.setSentenceList(null);
        }

//
//        List<Integer> momentIdList = userMapper.momentIdListByUserId(currentId);
//        List<Moment> momentList;
//        if (momentIdList.size() > 0 && momentIdList != null) {
//
//            momentList = userMapper.momentListByMomentIdList(momentIdList);
//            thumbsUpVO.setMomentList(momentList);
//        } else {
//            thumbsUpVO.setMomentList(null);
//        }

        return thumbsUpVO;


    }

    //收藏
    @Override
    public ThumbsUpVO collect(ThumbsUpOrCollectDTO thumbsUpOrCollectDTO) {

        ThumbsUpVO thumbsUpVO = new ThumbsUpVO();
        Long currentId = thumbsUpOrCollectDTO.getUserId();
        //BaseContext.getCurrentId();
        int favoriteNum = sentenceMapper.favoriteNumByUserId(currentId);

        // 查询是否已经收藏
        Favorites favorites = sentenceMapper.lookCollect(thumbsUpOrCollectDTO);
        // 如果已经收藏，则取消收藏并返回"取消收藏"
        if (favorites != null) {
            sentenceMapper.unCollect(thumbsUpOrCollectDTO);
            thumbsUpVO.setMsg("取消收藏");
            thumbsUpVO.setNum(favoriteNum - 1);


            List<Integer> sentenceIdList = userMapper.sentenceIdList(currentId);

            List<Sentence> sentenceList = null;
            if (sentenceIdList.size() > 0 && sentenceIdList != null) {
                sentenceList = userMapper.sentenceListBySentenceIdList(sentenceIdList);
                List<Sentence> filteredSentenceList = sentenceList.stream()
                        .filter(sentence -> sentence != null)
                        .collect(Collectors.toList());

                for (Sentence sentence : filteredSentenceList) {
                    List<String> derivation = userMapper.derivationListBYSentenceId(sentence.getSentenceId());
                    sentence.setDerivation(derivation);
                }

            }
            thumbsUpVO.setSentenceList(sentenceList);

            return thumbsUpVO;
        }


        // 如果未收藏，则进行收藏操作并返回"收藏成功"
        sentenceMapper.collect(thumbsUpOrCollectDTO);

        thumbsUpVO.setMsg("收藏成功");
        thumbsUpVO.setNum(favoriteNum + 1);


        List<Integer> sentenceIdList = userMapper.sentenceIdList(currentId);

        List<Sentence> sentenceList = null;
        if (sentenceIdList.size() > 0 && sentenceIdList != null) {
            sentenceList = userMapper.sentenceListBySentenceIdList(sentenceIdList);
            List<Sentence> filteredSentenceList = sentenceList.stream()
                    .filter(sentence -> sentence != null)
                    .collect(Collectors.toList());

            for (Sentence sentence : filteredSentenceList) {
                List<String> derivation = userMapper.derivationListBYSentenceId(sentence.getSentenceId());
                sentence.setDerivation(derivation);
            }

        }
        thumbsUpVO.setSentenceList(sentenceList);

        return thumbsUpVO;

    }

    @Override
    public String comment(CommentDTO commentDTO) {

        sentenceMapper.comment(commentDTO);

        return "评论成功";
    }


    /**
     * 得到commentList
     *
     * @param sentenceId
     * @return
     */
    private List<Comment> commentList(int sentenceId) {
        List<Integer> commentIdList = sentenceMapper.commentIdList(sentenceId);

        List<Comment> commentList = new ArrayList<>();


        for (Integer id : commentIdList) {
            Comment comment = momentMapper.commentFindBYcommentId(id);
            if (comment != null) {
                comment.setName(momentMapper.nameByUserId(comment.getUserId()));
                comment.setAvatar(momentMapper.avatarFindByUserId(comment.getUserId()));

                if (momentMapper.sexByUserId(comment.getUserId()) != 1) {
                    comment.setSex(0);
                } else {
                    comment.setSex(1);
                }
                // comment.setSex(momentMapper.sexByUserId(comment.getUserId()));
                commentList.add(comment);
            }
        }
        return commentList;
    }
}