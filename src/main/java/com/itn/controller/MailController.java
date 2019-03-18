
package com.itn.controller;

import com.itn.otherservice.MyMailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MailController {
     @Autowired
    private MyMailService myMailService;
  @PostMapping("/admin/mail")
public String mail(@RequestParam("to") String to,
            @RequestParam("subject") String subject,
            @RequestParam("message") String message,
            Model model){
    myMailService.sendMail("iamakillerbutsilent@gmail.com", to, subject,message);
        
    return"mailSuccess";
}
}
