package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.EducatorRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private EducatorRepository educatorRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Override
	public Admin checkadminLogin(String uname, String pwd) 
	{
		
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public List<Educator> ViewAllEducators() {
		return educatorRepository.findAll();
	}

	@Override
	public List<Student> ViewAllStudents() {
		return studentRepository.findAll();
	}

	@Override
	public String deleteedu(int eid) {
		educatorRepository.deleteById(eid);
		return "Deleted Educator By ID : "+eid+" Successfully!!";
	}

	@Override
	public String deletestu(int sid) {
		studentRepository.deleteById(sid);
		return "Deleted Student By ID : "+sid+" Successfully!!";
	}

	@Override
	public long educount() {
		return educatorRepository.count();
	}

	@Override
	public long stucount() {
		return studentRepository.count();
	}
}
