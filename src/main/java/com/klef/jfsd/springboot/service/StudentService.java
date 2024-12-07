package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Student;

public interface StudentService {

	public Student checkstulogin(String email,String pwd);

	public String registerStudent(Student student);
	
}
