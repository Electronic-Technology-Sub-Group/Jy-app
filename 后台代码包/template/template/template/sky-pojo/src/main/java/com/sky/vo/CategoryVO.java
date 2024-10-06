package com.sky.vo;

import com.sky.entity.Moment;
import com.sky.entity.Sentence;
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
public class CategoryVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private int categoryId;

    //分类名称
    private String categoryName;

    private String categoryPicture;

    private String categorySynopsis;

    private String albumName;

    private List<Sentence> sentenceList;


}

