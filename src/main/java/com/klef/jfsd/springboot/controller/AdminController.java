package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Educator;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;





@Controller
@RequestMapping("admin")
public class AdminController {
	
	  private static final String APWD2 = "apwd";
	private static final String AUNAME2 = "auname";
	@Autowired
	  private  AdminService adminService;
	    
	  
	  @GetMapping("login")
	  public ModelAndView adminlogin() 
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("adminlogin");
	    return mv;
	  }
	  
	  @PostMapping("checkadminlogin")
	  public ModelAndView checkadminlogin(@RequestParam(AUNAME2) String auname, 
	                                      @RequestParam(APWD2) String apwd) {
	      ModelAndView mv = new ModelAndView();

	      Admin admin = adminService.checkadminLogin(auname, apwd);

	      if (admin != null) {
	          mv.setViewName("adminhome");
	          long eduscount=adminService.educount();
	          long stuscount=adminService.stucount();
	          mv.addObject("eduscount",eduscount);
	          mv.addObject("stuscount",stuscount);
	      } else {
	          mv.setViewName("adminloginfail");
	          mv.addObject("message", "Login failed");
	      }
	      return mv;
	  }
	  
	  @GetMapping("home")
	     public ModelAndView adminhome()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("adminhome");
	       return mv;
	     }
	  
	  @GetMapping("deleteedu")
	  public ModelAndView deleteedu() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Educator> edulist = adminService.ViewAllEducators();
	    mv.setViewName("deleteedu");
	    mv.addObject("edulist", edulist);
	    return mv;
	  }
	  @GetMapping("deletestu")
	  public ModelAndView deletestu() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Student> stulist = adminService.ViewAllStudents();
	    mv.setViewName("deletestu");
	    mv.addObject("stulist", stulist);
	    return mv;
	  }
	  
	  @GetMapping("delete")
	  public String delete(@RequestParam("id") int eid) {
		  adminService.deleteedu(eid);
		  return "redirect:/deleteemp";
	  }
	 
	  @GetMapping("viewalledus")
	    public ModelAndView viewallemps() 
	    {
	      ModelAndView mv = new ModelAndView();
	      List<Educator> edulist = adminService.ViewAllEducators();
	      mv.setViewName("viewalledus");
	      mv.addObject("edulist", edulist);
	      return mv;
	    }
	  
	  @GetMapping("viewallstus")
	    public ModelAndView viewallstus() 
	    {
	      ModelAndView mv = new ModelAndView();
	      List<Student> stulist = adminService.ViewAllStudents();
	      mv.setViewName("viewallstus");
	      mv.addObject("stulist", stulist);
	      return mv;
	    }
	  
	  @GetMapping("logout")
	  public ModelAndView adminlogout() 
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("adminlogin");
	    return mv;
	  }
	
}
