package com.sky.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sky.context.BaseContext;
import com.sky.dto.CommentDTO;
import com.sky.dto.MomentDto;
import com.sky.dto.MomentPageQueryDTO;
import com.sky.dto.ThumbsUpOrCollectDTO;
import com.sky.entity.*;
import com.sky.exception.BaseException;
import com.sky.mapper.CommentsMapper;
import com.sky.mapper.LikesMapper;
import com.sky.mapper.MomentMapper;
import com.sky.mapper.UserMapper;
import com.sky.result.PageResult;
import com.sky.service.MomentService;
import com.sky.vo.*;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class MomentServiceImpl implements MomentService {

    @Autowired
    private MomentMapper momentMapper;
    @Autowired
    private LikesMapper likesMapper;
    @Autowired
    private CommentsMapper commentsMapper;
    @Autowired
    private UserMapper userMapper;

    @Override
    public MomentVO FindBYMomentId(int momentId) {
        MomentVO momentVO = new MomentVO();

        //
        Moment moment = momentMapper.FindBYMomentId(momentId);
        if (moment != null) {
            BeanUtils.copyProperties(moment, momentVO);
            Integer likesNum = momentMapper.likesoneNum(momentId);

            momentVO.setLikesNum(likesNum);

            //
            String avatar = momentMapper.avatarFindByUserId((long) moment.getUserId());
            String userName = momentMapper.nameByUserId((long) moment.getUserId());
            int sex = momentMapper.sexByUserId((long) moment.getUserId());
            momentVO.setAvatar(avatar);
            momentVO.setName(userName);
            momentVO.setSex(sex);
            //
            List<String> picture = momentMapper.pictureList(momentId);
            momentVO.setMomentPicture(picture);
            //
            List<Integer> commentId = momentMapper.CommentIdFindBYMomentId(momentId);
            //
            List<Comment> commentList = new ArrayList<>();

            for (Integer id : commentId) {
                Comment comment = momentMapper.commentFindBYcommentId(id);
                if (comment != null) {
                    comment.setName(momentMapper.nameByUserId(comment.getUserId()));
                    comment.setAvatar(momentMapper.avatarFindByUserId(comment.getUserId()));
                    comment.setSex(momentMapper.sexByUserId(comment.getUserId()));
                    commentList.add(comment);
                }

            }


            momentVO.setCommentList(commentList);
        }
        List<Integer> momentIdList = momentMapper.momentIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(momentIds -> momentIds != null)
                .collect(Collectors.toList());

        if (momentIdList.contains(momentVO.getMomentId())) {
            momentVO.setLogo(1);
            // 在列表中找到了目标sentenceId
        }

        return momentVO;

    }


    /**
     * 分页查询动态信息
     *
     * @param momentDTO
     * @return
     */
    public PageResult pageQuery(MomentPageQueryDTO momentDTO) {

        // 使用PageHelper进行分页
        PageHelper.startPage(momentDTO.getPage(), momentDTO.getPageSize());
        List<MomentAllVO> momentAllVOList = new ArrayList<>();

        // 查询所有社区动态信息
        List<Moment> momentList = momentMapper.selectALL();


        //创建list
        List<String> nameList = new ArrayList<>();
        List<String> avatarList = new ArrayList<>();
        List<Integer> likesNumList = new ArrayList<>();
        List<Integer> commentsNumList = new ArrayList<>();
        List<List<String>> pictureList = new ArrayList<>();
        for (Moment moment : momentList) {

            pictureList.add(momentMapper.pictureList(moment.getMomentId()));
            likesNumList.add(momentMapper.likesoneNum(moment.getMomentId()));
            commentsNumList.add(momentMapper.commentsoneNum(moment.getMomentId()));
            nameList.add(userMapper.nameNum(moment.getUserId()));
            avatarList.add(userMapper.avatarNum(moment.getUserId()));

        }


        List<Integer> momentIdList = momentMapper.momentIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(momentIds -> momentIds != null)
                .collect(Collectors.toList());

        //构建MomentAllVO对象列表

        for (int i = 0; i < momentList.size(); i++) {
            MomentAllVO momentAllVO = new MomentAllVO();
            Moment moment = momentList.get(i);
            BeanUtils.copyProperties(moment, momentAllVO);


            //----------------------------------------------------------------
            if (momentIdList.contains(moment.getMomentId())) {
                momentAllVO.setLogo(1);
                // 在列表中找到了目标sentenceId
            }

            momentAllVO.setLikesNum(likesNumList.get(i));


            momentAllVO.setCommentsNum(commentsNumList.get(i));

            momentAllVO.setMomentPicture(pictureList.get(i));
            momentAllVO.setName(nameList.get(i));
            momentAllVO.setAvatar(avatarList.get(i));
            momentAllVOList.add(momentAllVO);
        }


        // 将结果封装为PageResult对象并返回
        PageInfo<MomentAllVO> pageInfo = new PageInfo<>(momentAllVOList);
        int i = (int) pageInfo.getTotal();
        if (i == 0) {
            throw new BaseException("到底了");
        }
        return new PageResult(pageInfo.getTotal(), pageInfo.getList());
    }

    /**
     * 添加动态
     *
     * @param
     */
    @Override
    @Transactional
    public void addMoment(MomentDto momentDto) {


        momentDto.setMomentCreateDate(LocalDateTime.now());

        momentMapper.addMoment(momentDto);

        List<String> momentPicture = momentDto.getMomentPicture();
        int momentId = momentDto.getMomentId();


        for (String p : momentPicture) {
            momentMapper.addMomentPicture(p, momentId);

        }


    }

    // 点赞方法的实现
    @Override
    public ThumbsUpVO ThumbsUp(ThumbsUpOrCollectDTO thumbsUpOrCollectDTO) {

        ThumbsUpVO thumbsUpVO = new ThumbsUpVO();

        Long currentId = thumbsUpOrCollectDTO.getUserId();
        int userid = Math.toIntExact(currentId);
        Users user = userMapper.userDetail(userid);


        int likeNum = momentMapper.likeNumByUserId(currentId);
        // 调用句子映射器的查找点赞方法，传入点赞或收藏DTO对象，返回点赞对象
        Likes likes = momentMapper.lookThumbsUP(thumbsUpOrCollectDTO);
        // 如果点赞对象不为空
        if (likes != null) {
            // 调用句子映射器的取消点赞方法，传入点赞或收藏DTO对象
            momentMapper.unThumbsUp(thumbsUpOrCollectDTO);
            // 返回"取消点赞"
            thumbsUpVO.setMsg("取消点赞");


            thumbsUpVO.setNum(likeNum - 1);

            List<Integer> momentIdList = userMapper.momentIdListByUserId(currentId);
            List<Moment> momentList;
            List<MomentAllVO> momentVOList = new ArrayList<>();
            if (momentIdList.size() > 0 && momentIdList != null) {

                momentList = userMapper.momentListByMomentIdList(momentIdList);
                for (Moment moment : momentList) {
                    MomentAllVO momentAllVO = new MomentAllVO();
                    BeanUtils.copyProperties(moment,momentAllVO);
                    momentAllVO.setAvatar(user.getAvatar());
                    momentAllVO.setName(user.getName());
                    momentVOList.add(momentAllVO);
                }

                thumbsUpVO.setMomentList(momentVOList);
            } else {
                thumbsUpVO.setMomentList(null);
            }

            return thumbsUpVO;

        }

        // 调用句子映射器的点赞方法，传入点赞或收藏DTO对象
        momentMapper.ThumbsUp(thumbsUpOrCollectDTO);
        // 返回"点赞成功"
        thumbsUpVO.setMsg("点赞成功");

        thumbsUpVO.setNum(likeNum + 1);
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
        List<Integer> momentIdList = userMapper.momentIdListByUserId(currentId);
        List<Moment> momentList;
        List<MomentAllVO> momentVOList = new ArrayList<>();
        if (momentIdList.size() > 0 && momentIdList != null) {

            momentList = userMapper.momentListByMomentIdList(momentIdList);
            for (Moment moment : momentList) {
                MomentAllVO momentAllVO = new MomentAllVO();
                BeanUtils.copyProperties(moment,momentAllVO);
                momentAllVO.setAvatar(user.getAvatar());
                momentAllVO.setName(user.getName());
                momentVOList.add(momentAllVO);
            }

            thumbsUpVO.setMomentList(momentVOList);
        } else {
            thumbsUpVO.setMomentList(null);
        }
        return thumbsUpVO;
    }


    @Override
    public String comment(CommentDTO commentDTO) {

        momentMapper.comment(commentDTO);

        return "评论成功";
    }

    @Override
    public List<TopicAlbumVO> CategoryByTopicAlbum() {
        List<String> albumNameList = momentMapper.albumName();
        List<TopicAlbumVO> topicAlbumVOList = new ArrayList<>();

        for (String albumName : albumNameList) {
            TopicAlbumVO albumVO = new TopicAlbumVO();
            albumVO.setAlbumName(albumName);
            List<MomentCategory> categoryList = momentMapper.categoryByAlbumVOName(albumName);


            albumVO.setMomentCategoryList(categoryList);
            topicAlbumVOList.add(albumVO);
        }


        return topicAlbumVOList;

    }

    @Override
    public List<MomentAllVO> MomentAllVOByCategoryId(int categoryId) {


        List<MomentAllVO> momentAllVOList = new ArrayList<>();

        // 查询所有动态信息
        List<Moment> momentList = momentMapper.momentByCategoryId(categoryId);
        //创建list
        List<String> nameList = new ArrayList<>();
        List<String> avatarList = new ArrayList<>();
        List<Integer> likesNumList = new ArrayList<>();
        List<Integer> commentsNumList = new ArrayList<>();
        List<List<String>> pictureList = new ArrayList<>();
        for (Moment moment : momentList) {

            pictureList.add(momentMapper.pictureList(moment.getMomentId()));
            //likesNumList.add(momentMapper.likesoneNum(moment.getMomentId()));
            //commentsNumList.add(momentMapper.commentsoneNum(moment.getMomentId()));
            nameList.add(userMapper.nameNum(moment.getUserId()));
            avatarList.add(userMapper.avatarNum(moment.getUserId()));

        }

        List<Integer> momentIdList = momentMapper.momentIdByUserId(BaseContext.getCurrentId()).stream()
                .filter(momentIds -> momentIds != null)
                .collect(Collectors.toList());


        // 构建MomentAllVO对象列表

        for (int i = 0; i < momentList.size(); i++) {
            MomentAllVO momentAllVO = new MomentAllVO();
            Moment moment = momentList.get(i);
            BeanUtils.copyProperties(moment, momentAllVO);

            //momentAllVO.setLikesNum(likesNumList.get(i));
            if (momentIdList.contains(momentAllVO.getMomentId())) {
                momentAllVO.setLogo(1);
                // 在列表中找到了目标sentenceId
            }

            // momentAllVO.setCommentsNum(commentsNumList.get(i));

            momentAllVO.setMomentPicture(pictureList.get(i));
            momentAllVO.setName(nameList.get(i));
            momentAllVO.setAvatar(avatarList.get(i));
            momentAllVOList.add(momentAllVO);
        }

        return momentAllVOList;
    }

    @Override
    public MomentCategoryVO categoryByCategoryId(int categoryId) {
        return momentMapper.categoryByCategoryId(categoryId);
    }

    @Override
    public void dropMoment(int momentId) {


        int userId = Math.toIntExact(BaseContext.getCurrentId());

        int rowsAffected  = momentMapper.dropMoment(momentId,userId);
        if(rowsAffected  > 0){
            momentMapper.deletePByMomentId(momentId);
        }


    }


}
