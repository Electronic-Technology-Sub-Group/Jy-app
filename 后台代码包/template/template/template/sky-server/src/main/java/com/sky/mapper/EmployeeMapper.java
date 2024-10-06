package com.sky.mapper;

import com.sky.dto.EmployeeDTO;
import com.sky.entity.Employee;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface EmployeeMapper {


    /**
     * 根据用户名查询员工
     *
     * @param username
     * @return
     */
    @Select("select * from users where username = #{username}")
    Employee getByUsername(String username);

    /*
     * 添加员工
     *
     * */

    /*@Insert("insert into users(name, username, password, phone, sex, id_number, create_time)" +
            " VALUES" +
            "(#{name},#{username},#{password},#{phone},#{sex},#{idNumber},#{createTime})")
    int insert(Employee employee);*/
    @Insert("insert into users(name, username, password,avatar,create_time)" +
            " VALUES" +
            "(#{name},#{username},#{password},#{avatar},#{createTime})")
    int insert(Employee employee);
    /*
     * 分页查询
     * */
    // Page<Employee> pageQuery(EmployeePageQueryDTO employeePageQueryDTO);

    //    @AutoFill(OperationType.UPDATE)
    void update(EmployeeDTO employeeDTO);

    @Select("select * from employee where id = #{id}")
    Employee findById(long id);

    @Select("select * from employee where username = #{username}")
    Employee getByName(String username);
}
