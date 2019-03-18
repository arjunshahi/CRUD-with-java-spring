
package com.itn.controller;

import com.itn.service.CourseService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
    @Autowired
    CourseService courseService;
    @RequestMapping(value={"/index","/Index"},method=RequestMethod.GET)
 public String homePage(){
 return "index";
 } 
   @RequestMapping(value={"/contact","/Contact"},method=RequestMethod.GET)
    public String contactPage(){
    return"contact";
    }
     @RequestMapping(value={"/about","/About"},method=RequestMethod.GET)
    public String aboutPage(){
    return"about";
    }
    @GetMapping("/courses")
    public String ourCourses(Model model){
        model.addAttribute("coursedata",courseService.getAllCourse());
        return "ourcourses";
    }
    
    @GetMapping("/login")
    public String loginPage(){
        return "login";
    }
    @GetMapping("/loginFail")
    public String loginFail(){
        return "loginFail";
    }
    @GetMapping("/logout")
    public String loginOut(HttpServletRequest request,HttpServletResponse response){
        Authentication authentication =SecurityContextHolder.getContext().getAuthentication();
        if(authentication!=null){
        new SecurityContextLogoutHandler().logout(request,response,authentication);
        }
        return "login";
    }
}
