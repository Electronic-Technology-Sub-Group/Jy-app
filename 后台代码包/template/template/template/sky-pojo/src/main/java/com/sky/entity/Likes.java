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
public class Likes implements Serializable {

    private int likeId;

    private Long userId;

    private LocalDateTime likeDate;

    private int sentenceId;



}

