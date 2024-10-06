package com.sky.service;

import com.sky.dto.CommentDTO;
import com.sky.dto.MomentDto;
import com.sky.dto.MomentPageQueryDTO;
import com.sky.dto.ThumbsUpOrCollectDTO;
import com.sky.entity.Moment;
import com.sky.result.PageResult;
import com.sky.vo.*;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface MomentService {
    MomentVO FindBYMomentId(int momentId);

    PageResult pageQuery(MomentPageQueryDTO momentDTO);


    void addMoment(MomentDto momentDto);

    ThumbsUpVO ThumbsUp(ThumbsUpOrCollectDTO userId);


    String comment(CommentDTO commentDTO);

    List<TopicAlbumVO> CategoryByTopicAlbum();

    List<MomentAllVO> MomentAllVOByCategoryId(int categoryId);

    MomentCategoryVO categoryByCategoryId(int categoryId);

    void dropMoment(int momentId);
}
