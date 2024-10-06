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
public class Users implements Serializable {

    //private static final long serialVersionUID = 1L;

    private Long userId;

    private String username;

    private String password;
    //姓名
    private String name;

    //手机号
    private String phone;

    //性别 0 女 1 男
    private int sex;


    private String signature;

    //头像
    private String avatar;

    //注册时间
    private LocalDateTime createTime;
}
