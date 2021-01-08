package com.services;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.bean.Admin;

public interface AdminServices {
      public String adminLogin(Admin admin,Model model,HttpSession session);
}
