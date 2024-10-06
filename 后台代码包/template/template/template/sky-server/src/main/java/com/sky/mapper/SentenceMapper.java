package com.sky.mapper;

import com.sky.dto.CommentDTO;
import com.sky.dto.ThumbsUpOrCollectDTO;
import com.sky.entity.Favorites;
import com.sky.entity.Likes;
import com.sky.entity.Sentence;
import com.sky.vo.AlbumVO;
import com.sky.vo.CategoryVO;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.Collection;
import java.util.List;

@Mapper
public interface SentenceMapper {

    // @Select("select * from sentence where category = #{category} order by sentence_create_date desc ")
    List<Sentence> sentenceByCategory(String category);

    @Select("select derivation from derivation where sentence_id = #{sentenceId}")
    List<String> derivationBySentenceId(int sentenceId);

    @Select("select count(like_id) from likes where sentence_id = #{sentenceId}")
    int likeNumBySentenceId(int sentenceId);

    @Select("select comment_id from comments where sentence_id = #{sentenceId} order by comment_date desc")
    List<Integer> commentIdList(int sentenceId);

    @Select("select count(favorite_id) from favorites where sentence_id = #{sentenceId}")
    int favoriteNumBySentenceId(int sentenceId);

    @Select("select count(comment_id) from comments where sentence_id = #{sentenceId}")
    int commentNumBySentenceId(int sentenceId);

    @Select("select * from sentence where sentence_id = #{sentenceId}")
    Sentence sentenceBySentenceId(int sentenceId);

    @Select("select * from likes where sentence_id = #{sentenceId} and user_id = #{userId}")
    Likes lookThumbsUP(ThumbsUpOrCollectDTO thumbsUpOrCollectDTO);

    @Insert("insert into likes (user_id, like_date, sentence_id) values (#{userId},#{likeDate},#{sentenceId})")
    void ThumbsUp(ThumbsUpOrCollectDTO thumbsUpOrCollectDTO);

    @Delete("DELETE FROM likes WHERE sentence_id = #{sentenceId} and user_id = #{userId}")
    void unThumbsUp(ThumbsUpOrCollectDTO thumbsUpOrCollectDTO);

    @Select("select * from favorites where sentence_id = #{sentenceId} and user_id = #{userId}")
    Favorites lookCollect(ThumbsUpOrCollectDTO thumbsUpOrCollectDTO);

    @Insert("insert into favorites (user_id, sentence_id) values (#{userId},#{sentenceId})")
    void collect(ThumbsUpOrCollectDTO thumbsUpOrCollectDTO);

    @Delete("DELETE FROM favorites WHERE sentence_id = #{sentenceId} and user_id = #{userId}")
    void unCollect(ThumbsUpOrCollectDTO thumbsUpOrCollectDTO);

    @Insert("insert into comments (user_id, comment_content, comment_date, sentence_id)" +
            " VALUES (#{userId},#{commentContent},#{commentDate},#{sentenceId})")
    void comment(CommentDTO commentDTO);

    @Select("select * from sentence order by sentence_create_date desc ")
    List<Sentence> sentenceAll();

    List<Sentence> sentenceByName(String name);

    List<Sentence> sentenceByCategoryId(int i);

    @Select("select *from album")
    List<String> albumName();

    List<CategoryVO> categoryVOList(List<AlbumVO> albumVOList);

    @Select("select *from category where album_name = #{albumName}")
    List<CategoryVO> categoryVOByAlbumVOName(String albumName);

    @Select("select *from category where category_id = #{categoryId}")
    CategoryVO categoryByCategoryId(int categoryId);

    @Select("select *from category")
    List<CategoryVO> categoryAll();

    @Select("select sentence_id from likes where user_id = #{currentId}")
    List<Integer> likedSentenceIdByUserId(Long currentId);

    @Select("select count(sentence_id) from likes where user_id = #{currentId}#")
    int likeNumByUserId(Long currentId);
    @Select("select count(sentence_id) from favorites where user_id = #{currentId}#")
    int favoriteNumByUserId(Long currentId);
    @Select("select sentence_id from favorites where user_id = #{currentId}")
    List<Integer> favoriteSentenceIdByUserId(Long currentId);
}
