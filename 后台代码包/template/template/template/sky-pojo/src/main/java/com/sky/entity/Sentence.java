package com.sky.entity;

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
// 定义一个名为sentence的类，实现Serializable接口
public class Sentence implements Serializable {

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
    private String categoryId;

}
