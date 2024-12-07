package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("student")
public class StudentController {

	private static final String CONTACT2 = "contact";
	private static final String LOCATION2 = "location";
	private static final String PASSWORD2 = "password";
	private static final String EMAIL2 = "email";
	private static final String CGPA2 = "cgpa";
	private static final String DEPARTMENT2 = "department";
	private static final String DOB2 = "dob";
	private static final String NAME2 = "name";
	private static final String GENDER2 = "gender";
	@Autowired
	private StudentService studentService;
	
	@GetMapping("login")
    public ModelAndView studlogin()
   {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("studentlogin");
       return mv;
   } 
	
	@GetMapping("signup")
	  public ModelAndView empreg()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("studentsignup");
	    return mv;
	  }
	
		@PostMapping("/stusignup")
		public String studentSignup(@RequestParam(NAME2) String name,
		                            @RequestParam(GENDER2) String gender,
		                            @RequestParam(DOB2) String dob,
		                            @RequestParam(DEPARTMENT2) String department,
		                            @RequestParam(CGPA2) float cgpa,
		                            @RequestParam(EMAIL2) String email,
		                            @RequestParam(PASSWORD2) String password,
		                            @RequestParam(LOCATION2) String location,
		                            @RequestParam(CONTACT2) String contact) {
		    
		    Student student = new Student();
		    student.setName(name);
		    student.setGender(gender);
		    student.setDateofbirth(dob);
		    student.setDepartment(department);
		    student.setCgpa(cgpa);
		    student.setEmail(email);
		    student.setPassword(password);
		    student.setLocation(location);
		    student.setContact(contact);
		    student.setStatus("Registered");
		    
		    
		    studentService.registerStudent(student);
		    
		    return "stusignupsuccess";
		}
		@PostMapping("/checkstudlogin")
		public ModelAndView checkstudlogin(HttpServletRequest request) {
		    ModelAndView mv = new ModelAndView();

		    String susername = request.getParameter("susername");
		    String spwd = request.getParameter("spwd");

		    Student stud = studentService.checkstulogin(susername, spwd);

		    if (stud != null) {
		        HttpSession session = request.getSession();
		        session.setAttribute("student", stud);
		        mv.setViewName("studenthome"); // Redirect to student home page
		    } else {
		        mv.setViewName("studloginfail");
		        mv.addObject("message", "Login Failed");
		    }

		    return mv;
		}
		@GetMapping("home")
	    public ModelAndView stuhome()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("stuhome");
	      return mv;
	    }
	
}
	