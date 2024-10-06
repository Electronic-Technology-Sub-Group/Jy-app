package com.sky.mapper;

import com.sky.dto.FollowDTO;
import com.sky.dto.PasswordEditDTO;
import com.sky.dto.UserDTO;
import com.sky.entity.Moment;
import com.sky.entity.Sentence;
import com.sky.entity.Users;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserMapper {

    /**
     * 根据openid 查询用户
     *
     * @param openid
     * @return
     */
    @Select("select *from sky_take_out.user where openid =#{openid}")
    Users getBYid(String openid);

    /**
     * 保存新用户
     *
     * @param user
     */
    @Insert("insert into users(name, username, password,avatar,create_time)" +
            " VALUES" +
            "(#{name},#{username},#{password},#{avatar},#{createTime})")
    int insert(Users user);
    //void insert(Users user);

    @Select("select * from users where user_id = #{userId}")
    Users getById(Long userId);

    //Integer countByMap(Map map);

    List<String> nameList(List<Integer> userIdList);

    List<String> avatarList(List<Integer> userIdList);

    @Select("select name from mydemo.users where user_id = #{userId}")
    String nameNum(int userId);

    @Select("select avatar from mydemo.users where user_id = #{userId}")
    String avatarNum(int userId);

    @Select("select * from moment where user_id = #{userId}")
    List<Moment> momentListByUserId(long userId);


    @Select("select (sentence_id) from likes where user_id = #{userId}")
    List<Integer> sentenceIdListByUserId(long userId);


    @Select("select (moment_id) from likes where user_id = #{userId} ")
    List<Integer> momentIdListByUserId(long userId);

    List<Sentence> sentenceListBySentenceIdList(List<Integer> sentenceIdList);

    List<Moment> momentListByMomentIdList(List<Integer> momentIdList);

    @Select("select sentence_id from favorites where user_id = #{userId}")
    List<Integer> sentenceIdList(long userId);

    @Select("select derivation from derivation where sentence_id = #{sentenceId}")
    List<String> derivationListBYSentenceId(Integer sentenceId);

    @Select("select * from users where user_id = #{userId}")
    Users userDetail(int userId);

    @Select("select *from users where username = #{username}")
    Users getByUserName(String username);

    @Select("select count(fanUser_id) from fan where user_id = #{userId}")
    int funNum(int userId);

    @Select("select count(followUser_id) from follow where user_id = #{userId}")
    int followNum(int userId);

    @Insert("insert into follow (user_id, followUser_id) VALUES (#{userId},#{followUserId})")
    void follow(FollowDTO followDTO);

    @Insert("insert into fan (user_id, fanUser_id) VALUES (#{followUserId},#{userId})")
    void fan(FollowDTO followDTO);

    @Select("select followUser_id from follow where user_id = #{userId}")
    List<Long> followByUserId(Long userId);

    @Delete("delete from follow where user_id = #{userId} and followUser_id = #{followUserId}")
    void deleteFollow(FollowDTO followDTO);

    @Delete("delete from fan where user_id = #{followUserId} and fanUser_id = #{userId}")
    void deleteFan(FollowDTO followDTO);

    @Update("update users set password = #{newPassword} where user_id = #{userId}")
    void passwordEdit(PasswordEditDTO passwordEditDTO);

    @Select("select password from users where user_id =#{userId}")
    String passwordByUserId(Long userId);

    @Select("select followUser_id from follow where user_id = #{userId}")
    List<Integer> followuserIdByUserId(Long userId);


    void update(UserDTO userDTO);

    @Select("select fanUser_id from fan where user_id = #{userId}")
    List<Integer> fanListByUserId(Long userId);

    @Select("select followUser_id from follow where user_id= #{userId}")
    List<Integer> followListByUserId(Long userId);
}
