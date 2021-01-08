package com.services;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bean.Admin;
import com.dao.AdminDao;

@Service("adminServices")
public class AdminServicesImpl implements AdminServices{
    @Autowired
	private AdminDao adminDao;
    
	@Override
	public String adminLogin(Admin admin, Model model,HttpSession session) {
		// TODO Auto-generated method stub
		Admin admin1=adminDao.adminLogin(admin);
		if(admin1!=null) {
			session.setAttribute("admin", admin1);
			return "admin/home";
		}else {
			JOptionPane.showMessageDialog(null, "’À∫≈ªÚ’ﬂ√‹¬Î≤ª∆•≈‰");
			return "admin/login";
		}
		
	}

}
