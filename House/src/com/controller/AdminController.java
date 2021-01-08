package com.controller;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bean.Admin;
import com.services.AdminServices;
@Controller
public class AdminController {
	@Autowired
	private AdminServices adminServices;	
	
	@RequestMapping("/adminLogin")
	 public String login(Admin admin,Model model,HttpSession session) {
		 return adminServices.adminLogin(admin, model,session);
	 }
	
	
}
