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
public class Diary implements Serializable {

    private int userId;

    private String diaryContent;

    private LocalDateTime createTime;

    private int diaryId;

    private String name;
    //头像
    private String avatar;


}
