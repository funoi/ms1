package com.controller;

//#region imports
import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.IStudent;
import com.google.gson.Gson;
import com.vo.Student;
//#endregion

@Controller
public class SpringmvcController {
    @RequestMapping(value = "addStu", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String andStu(@RequestBody String json) throws IOException {

        Student stu = new Student();
        Gson gson = new Gson();
        stu = gson.fromJson(json, Student.class);

        InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
        SqlSession session = factory.openSession();
        IStudent IStudentDao = session.getMapper(IStudent.class);
        
        if (IStudentDao.selectStu(stu.getName()) != null) {
            session.close();
            return "数据重复";
        } else {
            IStudentDao.insertStu(stu);
            session.commit();
            session.close();
            return "插入成功";
        }
    }

}
