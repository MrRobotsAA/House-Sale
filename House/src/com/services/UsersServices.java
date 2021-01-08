package com.services;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import com.bean.Users;
   public interface UsersServices {
	   
   public String addUsers(Users Users, BindingResult result);
   public String selectAllUsers(Model model);
   public String deleteUsersByID(int uid,Model model);
   public String UsersLogin(Users Users,Model model,HttpSession session);
   public String updateUsersByID(Users Users,HttpSession session);
   public String addUsers2(Users Users, BindingResult result);
   public String changeUsers(Model model);
   public String updateUsersByID2(Users Users, HttpSession session);
   public String selectUsersByID1(int uid, Model model);
   public String addUser(Model model);
   
}
