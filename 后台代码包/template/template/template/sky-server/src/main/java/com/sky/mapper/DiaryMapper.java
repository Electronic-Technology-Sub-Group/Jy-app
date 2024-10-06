package com.sky.mapper;

import com.sky.entity.Diary;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface DiaryMapper {
    @Insert("insert into diary (create_time, user_id, diary_content, name, avatar) values" +
            " (#{createTime},#{userId},#{diaryContent},#{name},#{avatar})")
    void saveDiary(Diary diary);

    @Delete("delete from diary where diary_id = #{diaryId}")
    void deleteDiary(int diaryId);

    @Select("select *from diary where user_id = #{userId}")
    List<Diary> findDiaryListByUserId(int userId);

    @Select("select *from diary where diary_id = #{diaryId}")
    Diary diaryDetail(int diaryId);
}
