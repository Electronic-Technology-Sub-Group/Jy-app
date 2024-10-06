package com.sky.service;

import com.sky.dto.CommentDTO;
import com.sky.dto.SentencePageQueryDTO;
import com.sky.dto.ThumbsUpOrCollectDTO;
import com.sky.result.PageResult;
import com.sky.vo.*;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface SentenceService {


    List<SentenceVO> sentenceByCategory(String category);

    SentenceDetailVO sentenceDetail(int sentenceId);

    ThumbsUpVO ThumbsUp(ThumbsUpOrCollectDTO userId);

    ThumbsUpVO collect(ThumbsUpOrCollectDTO thumbsUpDTO);

    String comment(CommentDTO commentDTO);

    PageResult pageQuery(SentencePageQueryDTO sentencePageQueryDTO);

    List<SentenceVO> sentenceByName(String name);

    List<SentenceVO> sentenceByCategoryId(int i);

    List<AlbumVO> sentenceByAlbum();


    CategoryVO categoryByCategoryId(int categoryId);


    List<CategoryVO> categoryAll();

}
