package com.klef.jfsd.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BaseController {
	
	@GetMapping("/")
	public String home() {
		return "home";
	}
	@GetMapping("/home")
	public String home2() {
		return "home";
	}
	@GetMapping("/about")
    public String about() {
        return "about";
    }
	@GetMapping("/viewplans")
    public String viewPlans() {
        return "viewplans"; 
    }
	@GetMapping("/explorecourses")
    public String exploreCourses() {
        return "explorecourses";
    }
	@GetMapping("/adminlogin")
    public String adminLogin() {
        return "adminlogin";
    }
	@GetMapping("/studentlogin")
    public String studentLogin() {
        return "studentlogin";
    }
	@GetMapping("/educatorlogin")
    public String educatorLogin() {
        return "educatorlogin";
    }
	@GetMapping("/signup")
    public String signup() {
        return "signup";
    }

	
}
