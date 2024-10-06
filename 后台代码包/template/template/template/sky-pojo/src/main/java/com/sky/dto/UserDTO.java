package com.sky.dto;

import lombok.Data;

import java.io.Serializable;

@Data
public class UserDTO implements Serializable {

    private Long userId;

    private String name;

    private String avatar;

    private String phone;

    private String sex;

    private String signature;

}
