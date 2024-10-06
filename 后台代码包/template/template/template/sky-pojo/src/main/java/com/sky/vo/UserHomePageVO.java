package com.sky.vo;

import io.swagger.annotations.ApiModel;
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
public class UserHomePageVO implements Serializable {

    private Long userId;

    private String username;

    //姓名
    private String name;

    //性别 0 女 1 男
    private int sex;

    //头像
    private String avatar;

    //粉丝数量
    private int fanNum;

    //关注数量
    private int followNum;

    private String signature;

    private int logo = 0;


}
