package com.sky.dto;

import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
public class DiaryDTO implements Serializable {


    private int userId;

    private String diaryContent;

    private LocalDateTime createTime;

    private int diaryId;

    private String name;
    //头像
    private String avatar;


}
