package com.sky.controller.user;

import com.sky.result.Result;
import com.sky.utils.AliOssUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/user/common")
@Api(tags = "图片上传")
public class CommonController {
    @Autowired
    private AliOssUtil aliOssUtil;


    /*
     * 阿里云上传文件
     * */
    @PostMapping("/upload")
    @ApiOperation("单个图片")
    public Result<String> upload(MultipartFile file) {

        try {
            // 获取文件的原始文件名
            String originalFilename = file.getOriginalFilename();
            // 获取文件的扩展名
            String extension = originalFilename.substring(originalFilename.lastIndexOf("."));
            // 生成一个随机的文件名
            String name = UUID.randomUUID() + extension;
            //通过 aliOssUtil 工具类进行文件上传
            String upload = aliOssUtil.upload(file.getBytes(), name);

            return Result.success(upload);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }


    }

    @PostMapping("/uploadAll")
    @ApiOperation("多个图片")
    public Result<List<String>> uploadAll(MultipartFile[] files) {

        List<String> list = new ArrayList<>();
        try {
            for (MultipartFile file : files) {
                // 获取文件的原始文件名
                String originalFilename = file.getOriginalFilename();
                // 获取文件的扩展名
                String extension = originalFilename.substring(originalFilename.lastIndexOf("."));
                // 生成一个随机的文件名
                String name = UUID.randomUUID() + extension;
                //通过 aliOssUtil 工具类进行文件上传
                String upload = aliOssUtil.upload(file.getBytes(), name);

                list.add(upload);
            }

            return Result.success(list);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }


    }


}
