
package com.itn.controller;

import com.itn.model.Student;
import com.itn.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class StudentController {
    @Autowired
    StudentService stuService;
 @GetMapping({"/Admin/Student/Add","/admin/student/add"})
    public String addStudent(){
    return "addstudent";
    }
 @PostMapping({"/Admin/Student/Add","/admin/student/add"})  
public String saveStudent(@RequestParam("name") String name,
         @RequestParam("gender") String gender, @RequestParam("dob") String dob,
         @RequestParam("num") long num,@RequestParam("country") String country,
         @RequestParam("hobbies") String hobbies,@RequestParam("image") MultipartFile file, Model model){
    Student s = new Student();
    s.setName(name);
    s.setCountry(country);
    s.setDob(dob);
    s.setGender(gender);
    s.setNum(num);
    s.setHobbies(hobbies);
    s.setImage(file.getOriginalFilename());
    stuService.addImage(file);
    //model.addAttribute("msg","upload sucess!");
    stuService.addStudent(s);
    
return"studentadded";
} 
@GetMapping({"/Admin/Student/Display","/admin/student/display"})
public String Display(Model model){
model.addAttribute("studentdata", stuService.displayStudent());
return "displaystudent";
}
@GetMapping({"/admin/student/edit/{idcode}","/Admin/Student/Edit/{idcode}"})
public String edit(@PathVariable("idcode")int id,Model model){
model.addAttribute("studentdata",stuService.selectStudentById(id));
return"editstudent";
}
@PostMapping({"/admin/student/update","/Admin/Student/Update"})
public String update(@RequestParam("id") int id,@RequestParam("name") String name,
         @RequestParam("gender") String gender, @RequestParam("dob") String dob,
         @RequestParam("num") long num,@RequestParam("country") String country,
         @RequestParam("hobbies") String hobbies,@RequestParam("image") MultipartFile file,
         @RequestParam("originalImage") String originalImage,Model model){
    
    Student s= new Student();
    s.setId(id);
    s.setName(name);
    s.setCountry(country);
    s.setDob(dob);
    s.setGender(gender);
    s.setNum(num);
    s.setHobbies(hobbies);
    
    String newFile;
    
   if(!(file.isEmpty())&&(!(newFile=file.getOriginalFilename()).equals(originalImage))){
   s.setImage(newFile);
   if(stuService.updateImage(file,originalImage)){
       System.out.println(s.getName());
   }
   }else{
   s.setImage(originalImage);
   }
 
       stuService.updateStudent(s); 
 // mv.setViewName("redirect:/");
// return mv;
return"redirect:/admin/student/display";
}
@GetMapping({"/admin/student/delete/{idcode}","/Admin/Student/Delete/{idcode}"})
public String delete(@PathVariable("idcode")int id){
stuService.deleteStudent(id);
return"redirect:/studentdeleted";
}
@GetMapping({"/studentupdated"})
public String updated(Model model){
model.addAttribute("studentdata", stuService.displayStudent());
return"studentupdated";
}
@GetMapping({"/studentdeleted"})
public String deleted(Model model){
model.addAttribute("studentdata",stuService.displayStudent());
return "studentdeleted";
}
}
