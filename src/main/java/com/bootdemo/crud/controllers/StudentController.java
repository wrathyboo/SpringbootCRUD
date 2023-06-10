package com.bootdemo.crud.controllers;

import com.bootdemo.crud.services.StudentService;
//import com.bootdemo.crud.services.StudentService;
import com.google.gson.Gson;

import com.bootdemo.crud.entities.Student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class StudentController {

    private final StudentService studentService;
    @Autowired
	public StudentController(StudentService studentService) {
		this.studentService = studentService;
	}


	@GetMapping("/")
    public String list(){
//        System.out.println(employeeService.getListEmployee());
    	List<Student> listBook = studentService.getList();
		Gson son = new Gson();
		String data = son.toJson(listBook);
		System.out.println(data);
		return data;
    }
    
    @GetMapping("/find/{stuId}")
    public String studentDetails(@PathVariable Integer stuId){
//        System.out.println(employeeService.getListEmployee());
    	Student listBook = studentService.getStudent(stuId);
    	Gson son = new Gson();
		String data = son.toJson(listBook);
    	if (listBook == null) {
    		
    		System.out.println("NULL");
    	}
    	else {
    		System.out.println(data);
    	}
		
		return data;
    }
    
    @PostMapping("/create")
    public Student createNewStudent(@RequestBody Student stu) {
    	return studentService.create(stu);
    }
    
    @PutMapping("/update/{stuId}")
    public Student updateStudent(@PathVariable Integer stuId, @RequestBody Student stu) {
    	return studentService.update(stu,stuId);
    }
    
    @DeleteMapping("/delete/{stuId}")
    public String deleteStudent(@PathVariable Integer stuId) {
    	 studentService.delete(stuId);
    	 return "Student "+stuId+" deleted";
    }

}
