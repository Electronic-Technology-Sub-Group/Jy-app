package com.sky.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.sky.constant.MessageConstant;
import com.sky.constant.PasswordConstant;
import com.sky.constant.StatusConstant;
import com.sky.context.BaseContext;
import com.sky.dto.EmployeeDTO;
import com.sky.dto.EmployeeLoginDTO;
import com.sky.dto.EmployeePageQueryDTO;
import com.sky.dto.PasswordEditDTO;
import com.sky.entity.Employee;
import com.sky.exception.AccountLockedException;
import com.sky.exception.AccountNotFoundException;
import com.sky.exception.PasswordErrorException;
import com.sky.mapper.EmployeeMapper;
import com.sky.result.PageResult;
import com.sky.service.EmployeeService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService{

    @Autowired
    private EmployeeMapper employeeMapper;

    /**
     * 员工登录
     *
     * @param employeeLoginDTO
     * @return
     */
    public Employee login(EmployeeLoginDTO employeeLoginDTO) {
        String username = employeeLoginDTO.getUsername();
        String password = employeeLoginDTO.getPassword();

       /* LambdaQueryWrapper<Employee> queryWrapper = new LambdaQueryWrapper<>();

        queryWrapper.eq(Employee::getUsername, employeeLoginDTO.getUsername());
        Employee employee = employeeMapper.selectOne(queryWrapper);
*/
        //1、根据用户名查询数据库中的数据
        Employee employee = employeeMapper.getByUsername(username);

        //2、处理各种异常情况（用户名不存在、密码不对、账号被锁定）


        //账号不存在
        if (employee == null) {

            throw new AccountNotFoundException(MessageConstant.ACCOUNT_NOT_FOUND);
        }

        //密码比对
        // 对前端明文密码进行md5加密，然后再进行比对
        password = DigestUtils.md5DigestAsHex(password.getBytes());
        if (!password.equals(employee.getPassword())) {
            //密码错误
            throw new PasswordErrorException(MessageConstant.PASSWORD_ERROR);
        }

//        if (employee.getStatus() == StatusConstant.DISABLE) {
//            //账号被锁定
//            throw new AccountLockedException(MessageConstant.ACCOUNT_LOCKED);
//        }

        //3、返回实体对象
        return employee;
    }


    public void save(EmployeeLoginDTO employeeDTO) {
        //1、根据用户名查询数据库中的数据
        Employee e = employeeMapper.getByUsername(employeeDTO.getUsername());

        //2、处理各种异常情况（用户名不存在、密码不对、账号被锁定）
        if (e != null) {
            //账号已存在
            throw new AccountNotFoundException(MessageConstant.ALREADY_EXISTS);
        }

        Employee employee = new Employee();

        //将DTO cpoy 到 实体类
        BeanUtils.copyProperties(employeeDTO, employee);


        // 设置密码
        employee.setPassword(DigestUtils.md5DigestAsHex(employeeDTO.getPassword().getBytes()));


        //设置 添加时间
         employee.setCreateTime(LocalDateTime.now());

         employee.setAvatar("https://c-ssl.dtstatic.com/uploads/blog/202208/01/20220801165631_5ce88.thumb.1000_0.jpeg");

         employee.setName("大学生一枚");

         //BaseContext.threadLocal.remove();

        employeeMapper.insert(employee);

    }




    public void update(EmployeeDTO employeeDTO) {


//        Employee employee = new Employee();
//        BeanUtils.copyProperties(employeeDTO, employee);

        employeeMapper.update(employeeDTO);
    }




    /**
     * 修改密码
     *
     * @param passwordEditDTO
     */

    public void editPassword(PasswordEditDTO passwordEditDTO, HttpServletRequest request) {

        Cookie[] cookies = request.getCookies();
        if (cookies == null) {
            throw new PasswordErrorException(MessageConstant.PASSWORD_EDIT_FAILED);
        }

        // 通过cookie获取用户的name
        String username = null;
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("username")) {
                username = cookie.getValue();
                break;
            }
        }

        // 获取旧密码
        Employee employee = employeeMapper.getByName(username);

        // 匹配旧密码
        if (!DigestUtils.md5DigestAsHex(passwordEditDTO.getOldPassword().getBytes()).equals(employee.getPassword())) {
            // 匹配失败，抛出业务异常
            throw new PasswordErrorException(MessageConstant.PASSWORD_EDIT_FAILED);
        }

        employee.setPassword(DigestUtils.md5DigestAsHex(passwordEditDTO.getNewPassword().getBytes()));

       // employeeMapper.update(employee);
    }


}
