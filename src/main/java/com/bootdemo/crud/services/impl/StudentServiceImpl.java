package com.bootdemo.crud.services.impl;

import com.bootdemo.crud.entities.Student;
import com.bootdemo.crud.repository.StudentRepository;
import com.bootdemo.crud.services.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{

	private final StudentRepository studentRepository;

	@Autowired
	public StudentServiceImpl(StudentRepository studentRepository) {
		this.studentRepository = studentRepository;
	}

	@Override
	public List<Student> getList() {
		// TODO Auto-generated method stub
		return studentRepository.findAll();
	}
	
	
	

	@Override
	public List<Student> getListSorted() {
		return null;
	}



	@Override
	public Student getStudent(Integer stuId) {
		// TODO Auto-generated method stub
		Student stu = studentRepository.findById(stuId).orElse(null);
	    
	    return stu;
		
		
	}




	@Override
	public Student create(Student obj) {
		// TODO Auto-generated method stub
		return studentRepository.save(obj);
	}




	@Override
	public Student update(Student newData, Integer id) {
		// TODO Auto-generated method stub
		Student oldStudent = studentRepository.findById(id).orElse(null);
		if (oldStudent == null) {
			return null;
		}
		else {
			oldStudent.setFullName(newData.getFullName() != null ? newData.getFullName() : oldStudent.getFullName());
			oldStudent.setGender(newData.getGender() != null ? newData.getGender() : oldStudent.getGender());
			oldStudent.setBirthday(newData.getBirthday() != null ? newData.getBirthday() : oldStudent.getBirthday());
			oldStudent.setClassName(newData.getClassName() != null ? newData.getClassName() : oldStudent.getClassName());
			oldStudent.setAddress(newData.getAddress() != null ? newData.getAddress() : oldStudent.getAddress());
			studentRepository.save(oldStudent);
			return oldStudent;
		}
	}




	@Override
	public void delete(Integer stuId) {
		// TODO Auto-generated method stub
		 studentRepository.deleteById(stuId);
	}




}
