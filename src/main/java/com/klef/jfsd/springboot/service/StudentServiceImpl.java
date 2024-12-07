package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentRepository studentRepository;

	@Override
	public Student checkstulogin(String email, String pwd) {
		return studentRepository.checkstulogin(email, pwd);
	}

	@Override
	public String registerStudent(Student student) {
		studentRepository.save(student);
	    return "Hi, \n"+student.getName()+"Thank You For Registering\nYou Are Successfully Registered!!";
	}
	
	
	
}
