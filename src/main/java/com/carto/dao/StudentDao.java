package com.carto.dao;

import com.carto.vo.Student;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface StudentDao {

    void saveStudent(Student student);

    List getAll();

}
