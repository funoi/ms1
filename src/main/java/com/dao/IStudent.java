package com.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.vo.Student;

public interface IStudent {
    // 添加学生
    @Insert("insert into student values (#{name},#{sex},#{love},#{edu},#{intro})")
    public int insertStu(Student student);

    @Select("select * from student where name=#{name}")
    public Student selectStu(String name);
}
