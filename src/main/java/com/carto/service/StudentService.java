package com.carto.service;

import com.carto.vo.Student;
import org.springframework.stereotype.Service;

@Service
public interface StudentService {


    void saveStudent(Student student);

}
