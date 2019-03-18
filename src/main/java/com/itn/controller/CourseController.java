
package com.itn.controller;

import com.itn.model.Course;
import com.itn.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CourseController {
    @Autowired
    CourseService courseService;
    @RequestMapping(value={"/admin/course/add","/Admin/Course/Add"},method=RequestMethod.GET)
    public String addCourse(){
    return"addcourse";
    }
     @GetMapping("/courseupdate")
     public String updateCourse(Model model){
         model.addAttribute("coursedata",courseService.getAllCourse());
     return"courseupdated"; 
     }
    @RequestMapping(value={"/admin/course/add","/Admin/Course/Add"},method=RequestMethod.POST)
    public String saveCourse(@RequestParam("title") String ctitle,
            @RequestParam("price") String cprice,
            @RequestParam("duration") String cduration ,Model model){
        boolean formOk=true;
        if(ctitle.equals("")){
        model.addAttribute("ctitle","please mention title");
        formOk=false;
        }
        if(cprice.equals("")){
        model.addAttribute("cprice","please mention price");        
        formOk=false;
        }
        if(cduration.equals("")){
        model.addAttribute("cduration","please mention duration");     
        formOk=false;
        }
        
        if(formOk){
    Course c = new Course();
    c.setTitle(ctitle);
    c.setPrice(cprice);
    c.setDuration(cduration);
       // System.out.println(c.getTitle());
    courseService.addCourse(c);
   // return("redirect:/admin/course/display");
        }else{
        return"addcourse";
        }
    return "courseadded";
    }
     @RequestMapping(value={"/admin/course/display","/Admin/Course/Display"},method=RequestMethod.GET)
     public String showAllCourses(Model model){
     model.addAttribute("coursedata",courseService.getAllCourse());
     return"displaycourse";
     }
     @GetMapping("/Admin/Course/Edit/{idcode}")
     public String editCourse(@PathVariable("idcode") int id,Model model){
     model.addAttribute("coursedata",courseService.getCourseById(id));
     return"editcourse";
     }
     @PostMapping({"/admin/course/update","/Admin/Course/Update"})
     public String updateCourse(@ModelAttribute("course") Course c){
     courseService.updateCourse(c);
     return ("redirect:/courseupdate");
    // return"courseupdated";
     }
     @GetMapping("/Admin/Course/Delete/{idcode}")
     public String deleteCourse(@PathVariable("idcode") int id){
     //model.addAttribute("coursedata",courseService.getCourseById(id));
      courseService.deleteCourse(id);
     return ("redirect:/admin/course/display");
     }
}
