package com.sky.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
// Moment类实现了Serializable接口
public class MomentDto implements Serializable {

    // 私有属性momentId，用于存储动态ID
    private int momentId;

    // 私有属性userId，用于存储用户ID
    private int userId;

    // 私有属性momentContent，用于存储动态内容
    private String momentContent;

    // 私有属性momentPicture，用于存储动态图片
    private List<String> momentPicture = new ArrayList<>();

    // 使用@TableField注解标记momentCreateDate属性，在插入数据时自动填充
    // @TableField(fill = FieldFill.INSERT)
    // 私有属性momentCreateDate，用于存储动态创建时间
    private LocalDateTime momentCreateDate;

    //动态分区
    private int categoryId;

    //动态  社区 话题
   // private String momentCategory;

}
