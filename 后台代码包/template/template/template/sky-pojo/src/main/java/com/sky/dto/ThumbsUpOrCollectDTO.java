package com.sky.dto;

import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
public class ThumbsUpOrCollectDTO implements Serializable {


    private Long userId;

    private LocalDateTime likeDate = LocalDateTime.now();

    private int sentenceId;

    private int momentId;
}
