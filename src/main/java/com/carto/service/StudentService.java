package com.carto.service;

import com.carto.vo.Student;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface StudentService {


    void saveStudent(Student student);

    List<Student> getAll();
}
