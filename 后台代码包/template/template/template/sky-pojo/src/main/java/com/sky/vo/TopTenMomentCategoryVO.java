package com.sky.vo;

import com.sky.entity.MomentCategory;
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
public class TopTenMomentCategoryVO implements Serializable {



    private MomentCategory momentCategory;


    private int num;

}

