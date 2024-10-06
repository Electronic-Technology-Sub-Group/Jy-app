package com.sky.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.sky.constant.MessageConstant;
import com.sky.context.BaseContext;
import com.sky.dto.PasswordEditDTO;
import com.sky.dto.UserLoginDTO;
import com.sky.entity.Moment;
import com.sky.entity.Sentence;
import com.sky.entity.Users;
import com.sky.exception.AccountNotFoundException;
import com.sky.exception.PasswordErrorException;
import com.sky.mapper.UserMapper;
import com.sky.properties.WeChatProperties;
import com.sky.service.UserService;
import com.sky.utils.HttpClientUtil;
import com.sky.vo.LikeVO;
import com.sky.vo.MomentAllVO;
import com.sky.vo.MomentVO;
import com.sky.vo.UserHomePageVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private WeChatProperties weChatProperties;

    @Autowired
    private UserMapper userMapper;


    public static final String WX_LOGIN = "https://api.weixin.qq.com/sns/jscode2session";

    // @Override
//    public Users login(UserLoginDTO userLoginDTO) {
//       /* Map<String, String> map = new HashMap<>();
//        map.put("appid", weChatProperties.getAppid());
//        map.put("secret", weChatProperties.getSecret());
//        map.put("js_code", userLoginDTO.getCode());
//        map.put("grant_type", "authorization_code");
//        String s = HttpClientUtil.doGet(WX_LOGIN, map);
//        JSONObject jsonObject = JSON.parseObject(s);*/
//        //String openid = jsonObject.getString("openid");
//
//        String openid = getOpenId(userLoginDTO.getCode());
//
//        if (openid == null) {
//
//            throw new LoginFailedException(MessageConstant.LOGIN_FAILED);
//
//        }
//        //判断是否为新用户
//        Users user = userMapper.getBYid(openid);
//
//        //如果不是 则创建
//        if (user == null) {
//            user = Users.builder()
//                    .openid(openid)
//                    .createTime(LocalDateTime.now())
//                    .build();
//            userMapper.insert(user);
//        }
//
//        return user;
//    }

    @Override
    public List<MomentVO> momentListByUserId(long userId) {

        List<Moment> momentList = userMapper.momentListByUserId(userId);


        List<MomentVO> momentVOList = new ArrayList<>();
        for (Moment moment : momentList) {
            MomentVO momentVO = new MomentVO();
            Users user = userMapper.userDetail(moment.getUserId());
            BeanUtils.copyProperties(moment, momentVO);
            momentVO.setName(user.getName());
            momentVO.setAvatar(user.getAvatar());
            momentVOList.add(momentVO);
        }
        return momentVOList;
    }

    @Override
    public LikeVO likeListByUserId(long userId) {

//        List<Integer> sentenceIdList = userMapper.sentenceIdListByUserId(userId);
//        List<Sentence> sentenceList = userMapper.sentenceListBySentenceIdList(sentenceIdList);
//        List<List<String>> listDerivationList1 = new ArrayList<>();
//        List<String> nullList = new ArrayList<>();
//        nullList.add(" ");
//        for (Integer sentenceId : sentenceIdList) {
//
//            List<String> derivationList = userMapper.derivationListBYSentenceId(sentenceId);
//            if (derivationList != null && derivationList.size() > 0) {
//                listDerivationList1.add(derivationList);
//
//            }
//
//        }
//        int j = 0;
//        for (int i = 0; i < sentenceList.size(); i++) {
//
//            if (sentenceList.get(i) != null) {
//                sentenceList.get(i).setDerivation(listDerivationList1.get(j));
//                j++;
//
//            }
//
//        }
//
//        LikeVO likeVO = new LikeVO();
//        likeVO.setSentenceList(sentenceList);
//        List<Integer> momentIdList = userMapper.momentIdListByUserId(userId);
//        List<Moment> momentList = userMapper.momentListByMomentIdList(momentIdList);
//
//        likeVO.setMomentList(momentList);
//        return likeVO;


        LikeVO likeVO = new LikeVO();

        List<Integer> sentenceIdList = userMapper.sentenceIdListByUserId(userId);
        List<Sentence> sentenceList;
        if (sentenceIdList.size() > 0 && sentenceIdList != null) {
            sentenceList = userMapper.sentenceListBySentenceIdList(sentenceIdList);
            likeVO.setSentenceList(sentenceList);

            for (int i = 0; i < likeVO.getSentenceList().size(); i++) {
                List<String> derivation = userMapper.derivationListBYSentenceId(likeVO.getSentenceList().get(i).getSentenceId());
                likeVO.getSentenceList().get(i).setDerivation(derivation);
            }
        } else {
            likeVO.setSentenceList(null);
        }


        List<Integer> momentIdList = userMapper.momentIdListByUserId(userId);
        List<Moment> momentList;
        List<MomentAllVO> momentVOList = new ArrayList<>();
        if (momentIdList.size() > 0 && momentIdList != null) {

            momentList = userMapper.momentListByMomentIdList(momentIdList);
            for (Moment moment : momentList) {
                Users user = userMapper.userDetail(moment.getUserId());
                MomentAllVO momentAllVO = new MomentAllVO();
                BeanUtils.copyProperties(moment, momentAllVO);
                momentAllVO.setAvatar(user.getAvatar());
                momentAllVO.setName(user.getName());
                momentVOList.add(momentAllVO);
                likeVO.setMomentList(momentVOList);
            }
        } else {
            likeVO.setMomentList(null);
        }


        return likeVO;


    }

    @Override
    public List<Sentence> sentenceListByUserId(long userId) {
//        List<Integer> sentenceIdList = userMapper.sentenceIdList(userId);
//
//
//        List<List<String>> listDerivationList = new ArrayList<>();
//        List<String> nullList = new ArrayList<>();
//        nullList.add(" ");
//        for (Integer sentenceId : sentenceIdList) {
//            List<String> derivationList = userMapper.derivationListBYSentenceId(sentenceId);
//            if (derivationList != null && derivationList.size() > 0) {
//
//                listDerivationList.add(derivationList);
//
//            } else {
//
//                listDerivationList.add(nullList);
//            }
//
//
//        }
//        List<Sentence> sentenceList = userMapper.sentenceListBySentenceIdList(sentenceIdList);
//        for (int i = 0; i < sentenceList.size(); i++) {
//            sentenceList.get(i).setDerivation(listDerivationList.get(i));
//        }
//
        List<Integer> sentenceIdList = userMapper.sentenceIdList(userId);
        List<Sentence> sentenceList = null;
        if (sentenceIdList.size() > 0 && sentenceIdList != null) {
            sentenceList = userMapper.sentenceListBySentenceIdList(sentenceIdList);
            List<Sentence> filteredSentenceList = sentenceList.stream()
                    .filter(sentence -> sentence != null)
                    .collect(Collectors.toList());

            for (Sentence sentence : filteredSentenceList) {
                List<String> derivation = userMapper.derivationListBYSentenceId(sentence.getSentenceId());
                sentence.setDerivation(derivation);
            }

        }


        return sentenceList;
    }

    @Override
    public Users userDetail(int userId) {

        return userMapper.userDetail(userId);

    }

    /**
     * 登录
     *
     * @param userLoginDTO
     * @return
     */
    @Override
    public Users login(UserLoginDTO userLoginDTO) {

        String username = userLoginDTO.getUsername();
        String password = userLoginDTO.getPassword();

        //1、根据用户名查询数据库中的数据
        Users user = userMapper.getByUserName(username);

        //2、处理各种异常情况（用户名不存在、密码不对、账号被锁定）


        //账号不存在
        if (user == null) {

            throw new AccountNotFoundException(MessageConstant.ACCOUNT_NOT_FOUND);
        }

        //密码比对
        // 对前端明文密码进行md5加密，然后再进行比对
        password = DigestUtils.md5DigestAsHex(password.getBytes());
        if (!password.equals(user.getPassword())) {
            //密码错误
            throw new PasswordErrorException(MessageConstant.PASSWORD_ERROR);
        }

//        if (employee.getStatus() == StatusConstant.DISABLE) {
//            //账号被锁定
//            throw new AccountLockedException(MessageConstant.ACCOUNT_LOCKED);
//        }

        //3、返回实体对象
        return user;
    }

    /**
     * 注册用户
     *
     * @param userLoginDTO
     */
    @Override
    public void save(UserLoginDTO userLoginDTO) {
        //1、根据用户名查询数据库中的数据
        Users u = userMapper.getByUserName(userLoginDTO.getUsername());

        //2、处理各种异常情况（用户名不存在、密码不对、账号被锁定）
        if (u != null) {
            //账号已存在
            throw new AccountNotFoundException(MessageConstant.ALREADY_EXISTS);
        }


        Users user = new Users();

        //将DTO cpoy 到 实体类
        BeanUtils.copyProperties(userLoginDTO, user);


        // 设置密码
        user.setPassword(DigestUtils.md5DigestAsHex(userLoginDTO.getPassword().getBytes()));


        //设置 添加时间
        user.setCreateTime(LocalDateTime.now());

        user.setAvatar("https://c-ssl.dtstatic.com/uploads/blog/202208/01/20220801165631_5ce88.thumb.1000_0.jpeg");

        user.setName("大学生一枚");

        //BaseContext.threadLocal.remove();

        userMapper.insert(user);
    }

    @Override
    public UserHomePageVO userHomePage(int userId) {


        List<Integer> list = userMapper.followuserIdByUserId(BaseContext.getCurrentId());
        List<Integer> userIdList = list.stream()
                .filter(i -> i != null)
                .collect(Collectors.toList());


        Users user = userMapper.getById((long) userId);
        UserHomePageVO userHomePageVO = new UserHomePageVO();

        BeanUtils.copyProperties(user, userHomePageVO);

        if (userIdList.contains(userId)) {
            userHomePageVO.setLogo(1);

            // 在列表中找到了目标sentenceId
        }

        int funNum = userMapper.funNum(userId);
        userHomePageVO.setFanNum(funNum);


        int followNum = userMapper.followNum(userId);
        userHomePageVO.setFollowNum(followNum);
        return userHomePageVO;
    }

    @Override
    public void passwordEdit(PasswordEditDTO passwordEditDTO) {

        String password = userMapper.passwordByUserId(passwordEditDTO.getUserId());
        //password = DigestUtils.md5DigestAsHex(password.getBytes());
        if (password == null) {
            throw new PasswordErrorException(MessageConstant.PASSWORD_EDIT_FAILED);
        }
        if (password.equals(DigestUtils.md5DigestAsHex(passwordEditDTO.getOldPassword().getBytes()))) {
            passwordEditDTO.setNewPassword(DigestUtils.md5DigestAsHex(passwordEditDTO.getNewPassword().getBytes()));
            userMapper.passwordEdit(passwordEditDTO);
        }
    }

    @Override
    public List<Users> fanListByUserId(Long userId) {
        List<Users> fanList = new ArrayList<>();


        List<Integer> fanIdListByUserId = userMapper.fanListByUserId(userId);
        if (fanIdListByUserId.size() > 0 && fanIdListByUserId != null) {


            for (Integer userid : fanIdListByUserId) {
                Users users = userMapper.userDetail(userid);
                fanList.add(users);
            }
        }
        return fanList;
    }

    @Override
    public List<Users> followListByUserId(Long userId) {
        List<Users> fanList = new ArrayList<>();


        List<Integer> fanIdListByUserId = userMapper.followListByUserId(userId);
        if (fanIdListByUserId.size() > 0 && fanIdListByUserId != null) {


            for (Integer userid : fanIdListByUserId) {
                Users users = userMapper.userDetail(userid);
                fanList.add(users);
            }
        }
        return fanList;

    }


    /**
     * 调用 微信接口服务 返回 openid
     *
     * @param code
     * @return
     */
    private String getOpenId(String code) {
        Map<String, String> map = new HashMap<>();

        map.put("appid", weChatProperties.getAppid());
        map.put("secret", weChatProperties.getSecret());
        map.put("js_code", code);
        map.put("grant_type", "authorization_code");

        String s = HttpClientUtil.doGet(WX_LOGIN, map);

        JSONObject jsonObject = JSON.parseObject(s);

        String openid = jsonObject.getString("openid");
        return openid;
    }


}
