package com.sky.service.impl;

import com.sky.context.BaseContext;
import com.sky.entity.Diary;
import com.sky.entity.Users;
import com.sky.mapper.DiaryMapper;
import com.sky.mapper.UserMapper;
import com.sky.service.DiaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class DiaryServiceImpl implements DiaryService {


    @Autowired
    private DiaryMapper diaryMapper;

    @Autowired
    private UserMapper userMapper;

    @Override
    public void saveDiary(String diaryContent) {

        Diary diary = new Diary();
        int userId = Math.toIntExact(BaseContext.getCurrentId());
        diary.setUserId(userId);
        diary.setCreateTime(LocalDateTime.now());
        diary.setDiaryContent(diaryContent);
        Users users = userMapper.userDetail(userId);
        diary.setAvatar(users.getAvatar());
        diary.setName(users.getName());

        diaryMapper.saveDiary(diary);
    }



    @Override
    public void deleteDiary(int diaryId) {
        diaryMapper.deleteDiary(diaryId);
    }

    @Override
    public List findDiaryListByUserId() {
        int userId = Math.toIntExact(BaseContext.getCurrentId());

        return diaryMapper.findDiaryListByUserId(userId);
    }

    @Override
    public Diary diaryDetail(int diaryId) {
        return diaryMapper.diaryDetail(diaryId);
    }


}
