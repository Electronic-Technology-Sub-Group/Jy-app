package com.sky.controller.admin;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sky.constant.JwtClaimsConstant;
import com.sky.constant.PasswordConstant;
import com.sky.constant.StatusConstant;
import com.sky.dto.EmployeeDTO;
import com.sky.dto.EmployeeLoginDTO;
import com.sky.dto.EmployeePageQueryDTO;
import com.sky.dto.PasswordEditDTO;
import com.sky.entity.Employee;
import com.sky.properties.JwtProperties;
import com.sky.result.PageResult;
import com.sky.result.Result;
import com.sky.service.EmployeeService;
import com.sky.utils.JwtUtil;
import com.sky.vo.EmployeeLoginVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * 员工管理
 */
@RestController
@RequestMapping("/admin/employee")
@Slf4j
@Api(tags = "管理端用户相关接口")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;
    @Autowired
    private JwtProperties jwtProperties;



    /**
     * 登录
     *
     * @param employeeLoginDTO
     * @return
     */
    @PostMapping("/login")
    @ApiOperation("用户登录")
    public Result<EmployeeLoginVO> login(@RequestBody EmployeeLoginDTO employeeLoginDTO) {


        Employee employee = employeeService.login(employeeLoginDTO);

        //登录成功后，生成jwt令牌
        //自定义内容
        Map<String, Object> claims = new HashMap<>();
        claims.put(JwtClaimsConstant.EMP_ID, employee.getUserId());
        String token = JwtUtil.createJWT(
                jwtProperties.getAdminSecretKey(),
                jwtProperties.getAdminTtl(),
                claims);

        EmployeeLoginVO employeeLoginVO = EmployeeLoginVO.builder()
                .userId(employee.getUserId())
                .userName(employee.getUsername())
                .name(employee.getName())
                .token(token)
                .build();

        return Result.success(employeeLoginVO);
    }

    /**
     * 退出
     *
     * @return
     */
    @PostMapping("/logout")
    @ApiOperation("退出")
    public Result<String> logout() {
        return Result.success();
    }


    /*
     *  添加员工
     *
     * */
    @PostMapping("/save")
    @ApiOperation("注册员工")
    public Result save(@RequestBody EmployeeLoginDTO employeeLoginDTO) {

       // Employee employee = new Employee();
        //将DTO cpoy 到 实体类
        //BeanUtils.copyProperties(employeeDTO, employee);
        //设置 状态 1 为启用
       // employee.setStatus(StatusConstant.ENABLE);
        // 设置密码 默认为 123456

        //employee.setPassword(DigestUtils.md5DigestAsHex(PasswordConstant.DEFAULT_PASSWORD.getBytes()));

        //employee.setPassword(DigestUtils.md5DigestAsHex(employeeDTO.getPassword().getBytes()));

        employeeService.save(employeeLoginDTO);

        return Result.success();

    }

    /*
     * 分页查询
     * */
    @GetMapping("/page")
    @ApiOperation("分页查询")
    public Result<PageResult> page(EmployeePageQueryDTO employeePageQueryDTO) {

        Page page = new Page(employeePageQueryDTO.getPage(), employeePageQueryDTO.getPageSize());
        /*
        select *from employee
                <where>
             <if test="name != null and name != ' '">
                and name like concat('%',#{name},'%')
             </if>
         </where>
                order by create_time desc
*/

        LambdaQueryWrapper<Employee> queryWrapper = new LambdaQueryWrapper<>();

        queryWrapper.like(StringUtils.isNotEmpty(employeePageQueryDTO.getName()), Employee::getName, employeePageQueryDTO.getName())
                .orderByDesc(Employee::getCreateTime);
        //employeeService.page(page, queryWrapper);
       // PageResult pageResult = employeeService.pageQuery(employeePageQueryDTO);
        PageResult pageResult = new PageResult(page.getTotal(), page.getRecords());
        return Result.success(pageResult);
    }





    /*
     * 修改员工信息
     * */
    @PutMapping
    public Result modifyData(@RequestBody EmployeeDTO employeeDTO) {
        employeeService.update(employeeDTO);
        return Result.success();
    }

    /**
     * 修改密码
     *
     * @param passwordEditDTO
     * @return
     */
    @PutMapping("/editPassword")
    @ApiOperation("修改密码")
    public Result editPassword(@RequestBody PasswordEditDTO passwordEditDTO, HttpServletRequest request) {
        log.info("修改密码，{}", passwordEditDTO);

        employeeService.editPassword(passwordEditDTO, request);
        return Result.success();
    }


}
