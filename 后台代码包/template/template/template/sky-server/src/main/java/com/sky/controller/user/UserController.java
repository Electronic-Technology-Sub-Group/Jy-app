package com.sky.controller.user;

import com.sky.constant.JwtClaimsConstant;
import com.sky.context.BaseContext;
import com.sky.dto.FollowDTO;
import com.sky.dto.PasswordEditDTO;
import com.sky.dto.UserDTO;
import com.sky.dto.UserLoginDTO;
import com.sky.entity.Sentence;
import com.sky.entity.Users;
import com.sky.mapper.UserMapper;
import com.sky.properties.JwtProperties;
import com.sky.result.Result;
import com.sky.service.UserService;
import com.sky.utils.JwtUtil;
import com.sky.vo.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("user/user")
@Api(tags = "小程序用户接口")
@Slf4j
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private JwtProperties jwtProperties;
    @Autowired
    private UserMapper userMapper;

    //    @PostMapping("/login")
//    @ApiOperation("用户登录")
//    public Result<UserLoginVO> login(@RequestBody UserLoginDTO userLoginDTO) {
//        // log.info("********{}", userLoginDTO.getCode());
//
//        Users user = userService.login(userLoginDTO);
//
//        Map<String, Object> clamis = new HashMap<>();
//        clamis.put(JwtClaimsConstant.USER_ID, user.getId());
//        String token = JwtUtil.createJWT(jwtProperties.getUserSecretKey(), jwtProperties.getUserTtl(), clamis);
//        UserLoginVO vo = UserLoginVO.builder()
//                .id(user.getId())
//                .openid(user.getOpenid())
//                .token(token)
//                .build();
//        return Result.success(vo);
//    }

    @PostMapping("/login")
    @ApiOperation("用户登录")
    public Result<UserLoginVO> login(@RequestBody UserLoginDTO userLoginDTO) {


        Users user = userService.login(userLoginDTO);

        //登录成功后，生成jwt令牌
        //自定义内容
        Map<String, Object> clamis = new HashMap<>();
        clamis.put(JwtClaimsConstant.USER_ID, user.getUserId());
        String token = JwtUtil.createJWT(jwtProperties.getUserSecretKey(), jwtProperties.getUserTtl(), clamis);

        UserLoginVO userLoginVO = UserLoginVO.builder()
                .userId(user.getUserId())
                .username(user.getUsername())
                .name(user.getName())
                .token(token)
                .build();

        return Result.success(userLoginVO);
    }


    @PostMapping("/save")
    @ApiOperation("注册员工")
    public Result save(@RequestBody UserLoginDTO userLoginDTO) {


        userService.save(userLoginDTO);

        return Result.success();

    }


    @ApiOperation("用户个人信息查询")
    @PutMapping("/userDetail/{userId}")
    public Result<Users> userDetail(@PathVariable int userId) {

        Users users = userService.userDetail(userId);
        users.setPassword("小学生不可以偷看密码噢");


        return Result.success(users);
    }


    /*
     * 修改员工信息
     * */
    @PutMapping
    @ApiOperation("修改用户个人信息")
    public Result modifyData(@RequestBody UserDTO userDTO) {
        userMapper.update(userDTO);
        return Result.success();
    }


    @ApiOperation("用户首页查询")
    @PutMapping("/userHomePage/{userId}")
    public Result<UserHomePageVO> userHomePage(@PathVariable int userId) {

        UserHomePageVO userHomePageVO = userService.userHomePage(userId);

        return Result.success(userHomePageVO);
    }


    @PutMapping("/moment/{userId}")
    @ApiOperation("用户主页动态查询")
    public Result<List<MomentVO>> momentListByUserId(@PathVariable long userId) {

        List<MomentVO> momentList = userService.momentListByUserId(userId);


        return Result.success(momentList);
    }
    @PutMapping("/fanList")
    @ApiOperation("用户粉丝查询")
    public Result<List<Users>> fanListByUserId() {

        Long userId = BaseContext.getCurrentId();
        List<Users> fanList = userService.fanListByUserId(userId);


        return Result.success(fanList);
    }
    @PutMapping("/followList")
    @ApiOperation("用户关注查询")
    public Result<List<Users>> followListByUserId() {

        Long userId = BaseContext.getCurrentId();
        List<Users> fanList = userService.followListByUserId(userId);


        return Result.success(fanList);
    }




    @PutMapping("/like/{userId}")
    @ApiOperation("用户主页点赞查询")
    public Result<LikeVO> likeListByUserId(@PathVariable long userId) {

        LikeVO likeVO = userService.likeListByUserId(userId);
        return Result.success(likeVO);
    }

    @PutMapping("/favorite/{userId}")
    @ApiOperation("用户主页收藏查询")
    public Result<List<Sentence>> sentenceListByUserId(@PathVariable long userId) {

        List<Sentence> sentenceList = userService.sentenceListByUserId(userId);

        return Result.success(sentenceList);
    }

    @PostMapping("/follow")
    @ApiOperation("关注与取消关注")
    public Result fanByUserId(@RequestBody FollowDTO followDTO) {
        if (followDTO.getFollowUserId() == null || followDTO.getUserId() == null) {
            return Result.error("关注失败");
        }
        if (followDTO.getFollowUserId() == followDTO.getUserId()) {
            return Result.error("不能关注自己");
        }
//        Long followUserId = followDTO.getFollowUserId();
//        int followUserIdInt = followUserId.intValue();
//
//        List<Integer> followUserIdList = userMapper.followByUserId(followDTO.getUserId());
//
//        boolean b = false;
//        for (Integer i : followUserIdList) {
//            if (followUserIdInt == i) {
//                b = true;
//                break; // 如果找到了匹配的元素，可以提前结束循环
//            }
//        }
//
//
//        if (b) {
//            //取消关注
//            userMapper.deleteFollow(followDTO);
//            userMapper.deleteFan(followDTO);
//            return Result.success("取消关注");
//        }
        Long followUserId = followDTO.getFollowUserId();

        List<Long> followUserIdList = userMapper.followByUserId(followDTO.getUserId());

        if (followUserIdList.contains(followUserId)) {
            //取消关注
            userMapper.deleteFollow(followDTO);
            userMapper.deleteFan(followDTO);
            String msg = "取消关注";
            return Result.success(msg);
        }

        userMapper.follow(followDTO);
        userMapper.fan(followDTO);
        String msg = "关注成功";
        return Result.success(msg);
    }

    /**
     * 修改密码
     *
     * @param passwordEditDTO
     * @return
     */
    @PutMapping("/editPassword")
    @ApiOperation("修改密码")
    public Result editPassword(@RequestBody PasswordEditDTO passwordEditDTO) {
        log.info("修改密码，{}", passwordEditDTO);
        userService.passwordEdit(passwordEditDTO);

        return Result.success();
    }


}
