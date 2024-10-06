package com.sky.mapper;

import com.github.pagehelper.Page;
import com.sky.dto.CommentDTO;
import com.sky.dto.MomentDto;
import com.sky.dto.ThumbsUpOrCollectDTO;
import com.sky.entity.Comment;
import com.sky.entity.Likes;
import com.sky.entity.Moment;
import com.sky.entity.MomentCategory;
import com.sky.vo.MomentCategoryVO;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

@Mapper
public interface MomentMapper {

    @Select("select *from topicalbum")
    List<String> albumName();

    @Select("select *from myDemo.moment where moment_id = #{momentId}")
    Moment FindBYMomentId(int momentId);

    //@Select("select *from myDemo.moment ")
    //List<Moment> selectALL();

    // @Select("select COUNT(like_id) from myDemo.likes where moment_id = #{momentId}")
    List<Integer> likesNum(List<Integer> momentIdList);


    List<Integer> commentsNum(List<Integer> momentIdList);

    @Select("select *from myDemo.moment where category_id = 0 order by moment_id desc ")
    Page<Moment> selectALL();

    @Select("SELECT count(like_id) FROM myDemo.likes where moment_id = #{momentId}")
    Integer likesoneNum(int momentId);

    @Select("SELECT count(comment_id) FROM myDemo.comments where moment_id = #{momentId}")
    Integer commentsoneNum(int momentId);

    // @Insert("insert into mydemo.moment values ()")
    void addMoment(MomentDto momentDto);


    void addMomentPicture(String p, int momentId);

    @Select("select moment_picture from picture where moment_id = #{momentId}")
    List<String> pictureList(int momentId);

    @Select("select avatar from users where user_id =#{userId}")
    String avatarFindByUserId(Long userId);

    @Select("select comment_id from comments where moment_id = #{momentId}")
    List<Integer> CommentIdFindBYMomentId(int momentId);


    @Select("select * from comments where comment_id = #{id}")
    Comment commentFindBYcommentId(int id);

    @Select("select name from users where user_id = #{userId}")
    String nameByUserId(Long userId);


    @Select("select  sex from users where user_id = #{userId}")
    int sexByUserId(Long userId);

    @Select("select * from likes where moment_id = #{momentId} and user_id = #{userId}")
    Likes lookThumbsUP(ThumbsUpOrCollectDTO thumbsUpOrCollectDTO);

    @Delete("DELETE FROM likes WHERE moment_id = #{momentId} and user_id = #{userId}")
    void unThumbsUp(ThumbsUpOrCollectDTO thumbsUpOrCollectDTO);

    @Insert("insert into likes (user_id, like_date, moment_id) values (#{userId},#{likeDate},#{momentId})")
    void ThumbsUp(ThumbsUpOrCollectDTO thumbsUpOrCollectDTO);

    @Insert("insert into comments (user_id, comment_content, comment_date, moment_id)" +
            " VALUES (#{userId},#{commentContent},#{commentDate},#{momentId})")
    void comment(CommentDTO commentDTO);

    @Select("select *from momentcategory where album_name = #{albumName}")
    List<MomentCategory> categoryByAlbumVOName(String albumName);

    @Select("select *from moment where category_id = #{categoryId}")
    List<Moment> momentByCategoryId(int categoryId);

    @Select("select *from momentcategory where category_id = #{categoryId}")
    MomentCategoryVO categoryByCategoryId(int categoryId);

    @Select("select *from momentcategory")
    List<MomentCategory> CategoryAll();

    @Select("select count(moment_id) from likes where user_id = #{currentId}#")
    int likeNumByUserId(Long currentId);

    @Select("select moment_id from likes where user_id = #{currentId}")
    List<Integer> momentIdByUserId(Long currentId);

    @Select("select count(moment_id) from moment where category_id = #{categoryId}")
    int momentNumByCategoryId(int categoryId);

    @Delete("delete from moment where moment_id = #{momentId} and user_id = #{userId}")
    int dropMoment(@Param("momentId") Integer momentId, @Param("userId") Integer userId);

    @Delete("delete from picture where moment_id = #{momentId}")
    void deletePByMomentId(int momentId);


//    @Select("select * from comments where moment_id = #{momentId}")
//    Moment findByMomentId(int momentId);
//
//    @Select("select avatar from users where user_id =#{userId}")
//    String avatarFindByUserId(Long userId);
//
//    @Select("select name from users where user_id = #{userId}")
//    String nameByUserId(Long userId);
//
//    @Select("select comment_id from comments where moment_id = #{momentId}")
//    List<Integer> commentIdFindByMomentId(int momentId);
//    @Select("select * from comments where moment_id = #{commentid}")
//    Comment commentFindByCommentId(Integer commentId);


}
