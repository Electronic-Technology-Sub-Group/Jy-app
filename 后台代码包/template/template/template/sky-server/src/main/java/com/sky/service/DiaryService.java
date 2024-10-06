package com.sky.service;

import com.sky.entity.Diary;

import java.util.List;

public interface DiaryService {
    void saveDiary(String diaryContent);

    void deleteDiary(int diaryId);

    List findDiaryListByUserId();

    Diary diaryDetail(int diaryId);
}
