package com.bootdemo.crud.services;


import com.bootdemo.crud.entities.Student;

import java.util.List;



public interface StudentService {
    public List<Student> getList();
    public List<Student> getListSorted();
    public Student getStudent(Integer id);
    public Student create(Student obj);
    public Student update(Student s,Integer id);
    public void delete(Integer id);
}
