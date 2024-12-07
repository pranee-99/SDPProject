package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Educator;

public interface EducatorService {
	
	public Educator checkedulogin(String email,String pwd);
	public String registerEducator(Educator educator);
	public String updateemp(Educator e);
	public long studcount();
}
