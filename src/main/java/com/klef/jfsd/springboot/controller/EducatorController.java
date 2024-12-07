package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.service.EducatorService;

import jakarta.servlet.http.HttpServletRequest;



	@Controller
	@RequestMapping("/educator")
	public class EducatorController {
		
		@Autowired
		private EducatorService educatorService;
		
		@GetMapping("signup")
		  public ModelAndView empreg()
		  {
		    ModelAndView mv = new ModelAndView();
		    mv.setViewName("educatorsignup");
		    return mv;
		  }
		

		    @PostMapping("/edusignup")
		    public String eduSignup(@RequestParam("ename") String name,
		                            @RequestParam("egender") String gender,
		                            @RequestParam("edob") String dob,
		                            @RequestParam("edept") String dept,
		                            @RequestParam("esalary") double salary,
		                            @RequestParam("eemail") String email,
		                            @RequestParam("epwd") String password,
		                            @RequestParam("elocation") String location,
		                            @RequestParam("econtact") String contact) {
		        
		    	Educator educator=new Educator();
		    	educator.setName(name);
		    	educator.setGender(gender);
		    	educator.setDepartment(dept);
		    	educator.setDateofbirth(dob);
		        educator.setSalary(salary);
		        educator.setLocation(location);
		        educator.setEmail(email);
		        educator.setPassword(password);
		        educator.setContact(contact);
		        educator.setStatus("Registered");
		       educatorService.registerEducator(educator);
		        
		       return "signupsuccess";
		    }
	@GetMapping("login")
	public ModelAndView edulogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("educatorlogin");
		return mv;
	}
	
//	@PostMapping("checkedulogin")
//	public ModelAndView checkedulogin(@RequestParam("email") String email, 
//            @RequestParam("password") String password) {
//	    ModelAndView mv = new ModelAndView();
//	    
//	    Educator educator=educatorService.checkedulogin(email, password);
//	    if (educator != null) {
//	        mv.setViewName("educatorhome");
//	    } else {
//	        mv.setViewName("eduloginfail");
//	        mv.addObject("message", "Login Failed");
//	    }
//	    return mv;
//	}
	  @PostMapping("checkedulogin")
	    public ModelAndView checkedulogin(HttpServletRequest request) {
	        ModelAndView mv = new ModelAndView();

	        String euname = request.getParameter("euname");
	        String epwd = request.getParameter("epwd");

	        Educator educator = educatorService.checkedulogin(euname, epwd);

	        if (educator != null) {
	            mv.setViewName("educatorhome");
	            long count = educatorService.studcount();
	            mv.addObject("count", count);
	        } else {
	            mv.setViewName("eduloginfail");
	            mv.addObject("message", "login failed");
	        }
	        return mv;
	    }

	
	@GetMapping("home")
    public ModelAndView eduhome()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("educatorhome");
      return mv;
    }
	 @GetMapping("/viewallstud")
	    public ModelAndView viewallstuds() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("viewallstuds"); // The name of the view (e.g., a Thymeleaf HTML file)
	        return mv;
	    }

	}

	


