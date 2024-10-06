package com.sky.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Comment implements Serializable {

    private Long userId;

    private int commentId;

    private int sentenceId;

    private int sex;
    //姓名
    private String name;

    //
    private String commentContent;

    //头像
    private String avatar;


    private LocalDateTime commentDate;
}
