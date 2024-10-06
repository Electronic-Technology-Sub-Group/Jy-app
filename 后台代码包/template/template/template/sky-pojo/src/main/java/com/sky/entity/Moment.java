package com.sky.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
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
// Moment类实现了Serializable接口
public class Moment implements Serializable {

    // 私有属性momentId，用于存储动态ID
    private int momentId;

    // 私有属性userId，用于存储用户ID
    private int userId;

    // 私有属性momentContent，用于存储动态内容
    private String momentContent;

    // 私有属性momentPicture，用于存储动态图片
    //private String momentPicture;

    // 使用@TableField注解标记momentCreateDate属性，在插入数据时自动填充
    //@TableField(fill = FieldFill.INSERT)
    // 私有属性momentCreateDate，用于存储动态创建时间
    private LocalDateTime momentCreateDate;

    //动态分区
    //private String momentPartition;

    private int categoryId;

    //动态  社区 话题
    //private String momentCategory;


}
