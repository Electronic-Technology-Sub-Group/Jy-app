package com.sky.vo;

import com.sky.entity.Moment;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MomentCategoryVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private int categoryId;

    //分类名称
    private String categoryName;

    private String categoryPicture;

    private String categorySynopsis;

    private String albumName;


    private List<MomentAllVO> momentList;


}

