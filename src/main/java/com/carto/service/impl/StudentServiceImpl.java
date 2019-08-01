package com.carto.service.impl;

import com.carto.dao.StudentDao;
import com.carto.service.StudentService;
import com.carto.vo.Student;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{

    @Resource
    private StudentDao studentDao;

    @Override
    public void saveStudent(Student student) {
        studentDao.saveStudent(student);
    }

    @Override
    public List getAll() {
        return studentDao.getAll();
    }

}
