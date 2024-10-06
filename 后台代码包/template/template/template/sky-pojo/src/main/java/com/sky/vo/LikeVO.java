package com.sky.vo;

import com.sky.entity.Comment;
import com.sky.entity.Moment;
import com.sky.entity.Sentence;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LikeVO implements Serializable {

    private List<Sentence> sentenceList;

    private List<MomentAllVO> momentList;



}

