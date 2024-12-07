package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.model.Student;

public interface AdminService {
	
	public List<Educator> ViewAllEducators();
	public List<Student> ViewAllStudents();
	public String deleteedu(int eid);
	public String deletestu(int sid);
	public Admin checkadminLogin(String uname, String pwd);
	public long educount();
	public long stucount();
}
