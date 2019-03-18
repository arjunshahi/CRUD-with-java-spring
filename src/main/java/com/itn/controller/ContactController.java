
package com.itn.controller;

import com.itn.model.User;
import com.itn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {
    @Autowired
    UserService userService;
  @PostMapping("/contact")
public String sendMsg(@RequestParam("name") String name,@RequestParam("email") String email,
        @RequestParam("phone") String phone,@RequestParam("msg") String msg){
User u = new User();
u.setName(name);
u.setPhone(phone);
u.setMsg(msg);
u.setEmail(email);
userService.addUser(u);
return "userMsgSuccess";
} 

@GetMapping("/admin/display/usermsg")
public String displayMsg(Model model){
model.addAttribute("userdata", userService.displayUser());
return"displayUser";
}
@GetMapping("/admin/display/usermsg/delete/{idcode}")
public String deleteMsg(@PathVariable("idcode") int id,Model model){
userService.deleteUser(id);
return"redirect:/admin/display/usermsg";
}
 @GetMapping("/admin/mail/{idcode}")
     public String editCourse(@PathVariable("idcode") int id,Model model){
     model.addAttribute("userdata",userService.editUser(id));
     return"mailForm";
     }
}
