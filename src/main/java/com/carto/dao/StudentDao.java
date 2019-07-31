package com.carto.dao;

import com.carto.vo.Student;
import org.springframework.stereotype.Component;

@Component
public interface StudentDao {

    void saveStudent(Student student);

}
