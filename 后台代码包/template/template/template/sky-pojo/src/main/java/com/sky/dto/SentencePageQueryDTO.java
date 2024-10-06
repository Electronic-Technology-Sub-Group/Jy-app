package com.sky.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;


@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SentencePageQueryDTO implements Serializable {


    //页码
    private int page;

    //每页显示记录数
    private int pageSize;

//    //动态  社区 话题
//    private String momentCategory;

}
