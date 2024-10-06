package com.sky.dto;

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
public class CommentDTO implements Serializable {


    private Long userId;

    private String commentContent;

    private int sentenceId;

    private int momentId;

    private LocalDateTime commentDate = LocalDateTime.now();
}
