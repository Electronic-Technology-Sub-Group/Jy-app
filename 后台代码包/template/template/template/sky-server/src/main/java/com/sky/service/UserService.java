package com.sky.service;

import com.sky.dto.LikeDTO;
import com.sky.dto.PasswordEditDTO;
import com.sky.dto.UserLoginDTO;
import com.sky.entity.Likes;
import com.sky.entity.Moment;
import com.sky.entity.Sentence;
import com.sky.entity.Users;
import com.sky.vo.LikeVO;
import com.sky.vo.MomentVO;
import com.sky.vo.UserDetailVO;
import com.sky.vo.UserHomePageVO;

import java.util.List;

public interface UserService {

    //  Users login(UserLoginDTO userLoginDTO) ;

    List<MomentVO> momentListByUserId(long userId);

    LikeVO likeListByUserId(long userId);


    List<Sentence> sentenceListByUserId(long userId);

    Users userDetail(int userId);

    Users login(UserLoginDTO userLoginDTO);

    void save(UserLoginDTO userLoginDTO);

    UserHomePageVO userHomePage(int userId);

    void passwordEdit(PasswordEditDTO passwordEditDTO);

    List<Users> fanListByUserId(Long userId);

    List<Users> followListByUserId(Long userId);
}
