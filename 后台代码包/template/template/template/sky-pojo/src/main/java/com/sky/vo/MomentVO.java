package com.sky.vo;

import com.sky.entity.Comment;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MomentVO implements Serializable {


    private int momentId;

    private int userId;
    //姓名
    private String name;
    //头像
    private String avatar;

    //性别 0 女 1 男

    private int sex;

    private int categoryId;

    private String momentContent;

    private List<String> momentPicture;

    private LocalDateTime momentCreateDate;

    //private String momentPartition;
    //点赞数量
    private int likesNum;

    private List<Comment> commentList;

    private int logo = 0;

    //
}

