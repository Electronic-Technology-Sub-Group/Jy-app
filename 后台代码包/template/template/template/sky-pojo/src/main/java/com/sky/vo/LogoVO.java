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
public class LogoVO implements Serializable {



    private int Num;


    private int logo;


}
