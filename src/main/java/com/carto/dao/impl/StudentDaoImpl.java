package com.carto.dao.impl;

import com.carto.dao.StudentDao;
import com.carto.vo.Student;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class StudentDaoImpl implements StudentDao {

    @Resource
    private SessionFactory sessionFactory;

    @Override
    public void saveStudent(Student student) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.save(student);
    }

    @Override
    public  List<Student>  getAll() {
        Session currentSession = sessionFactory.getCurrentSession();
        String hql = "from Student";
        Query query = currentSession.createQuery(hql);
        return query.list();
    }
}
