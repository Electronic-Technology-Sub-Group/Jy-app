package com.sky.controller.user;

import com.sky.entity.Diary;
import com.sky.result.Result;
import com.sky.service.DiaryService;
import com.sky.utils.AliOssUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/user/diary")
@Api(tags = "日记相关接口")
public class DiaryController {

    @Autowired
    private DiaryService diaryService;

    @PutMapping("/saveDiary/{diaryContent}")
    @ApiOperation("添加日记")
    public Result saveDiary(@PathVariable String diaryContent) {

        diaryService.saveDiary(diaryContent);

        return Result.success();
    }


    @PutMapping("/findDiary")
    @ApiOperation("查找日记")
    public Result<List<Diary>> findDiary() {

      List diaryList = diaryService.findDiaryListByUserId();

        return Result.success(diaryList);
    }

    @PutMapping("/deleteDiary/{diaryId}")
    @ApiOperation("删除日记")
    public Result deleteDiary(@PathVariable int diaryId) {

        diaryService.deleteDiary(diaryId);

        return Result.success();
    }
    @PutMapping("/DiaryDetail/{diaryId}")
    @ApiOperation("查看日记详细")
    public Result diaryDetail(@PathVariable int diaryId) {

        Diary diary = diaryService.diaryDetail(diaryId);

        return Result.success(diary);
    }

}
