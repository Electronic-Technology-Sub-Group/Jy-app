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
public class SentenceVO implements Serializable {
    // 私有属性，句子ID
    private int sentenceId;

    // 私有属性，句子文本
    private String sentenceText;

    //句子出处
    private List<String> derivation;

    // 私有属性，句子图片
    private String sentencePicture;

    // 私有属性，句子创建日期时间
    private LocalDateTime sentenceCreateDate;

    //星期
    private String dayOfWeek;

    // 私有属性，句子所属类别
    private String category;

    private int likeNum;

    private int favoriteNum;

    private int commentNum;

    private int logo = 0;

    private int judge = 0;

    //private List<Comment> commentList;


}
