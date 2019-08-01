package com.carto.dao.impl;

import com.carto.dao.StudentDao;
import com.carto.vo.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
@Component
public class StudentDaoImpl implements StudentDao {

    @Resource
    private SessionFactory sessionFactory;

    @Override
    public void saveStudent(Student student) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.save(student);
    }
}
