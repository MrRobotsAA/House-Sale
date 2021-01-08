package com.services;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import com.bean.House;
import com.bean.Users;
import com.dao.UsersDao;
import com.validator.UsersValidator;

@Service("Userservices")
public class UsersServicesImpl implements UsersServices{
    @Autowired
	private UsersDao UsersDao;

    @Autowired 
    private UsersValidator UsersValidator;
	@Override
	public String addUsers(Users Users, BindingResult result) {
		// TODO Auto-generated method stub
		UsersValidator.validate(Users, result);
		if(result.hasErrors()) {
			return "users/addUsers";
		}
		int t=UsersDao.addUsers(Users);
		if(t>0) {
			return "users/succ";
		}else {
			return "users/error";
		}
	}
	
	@Override
	public String addUsers2(Users Users, BindingResult result) {
		// TODO Auto-generated method stub
		UsersValidator.validate(Users, result);
		if(result.hasErrors()) {
			return "admin/addUsers";
		}
		int t=UsersDao.addUsers(Users);
		if(t>0) {
			return "admin/succ";
		}else {
			return "admin/error";
		}
	}

	@Override
	public String selectAllUsers(Model model) {
		// TODO Auto-generated method stub
				List<Users> Users=UsersDao.selectAllUsers();
				model.addAttribute("Users", Users);
				return "admin/showUsers";
	}

	@Override
	public String changeUsers(Model model) {
		// TODO Auto-generated method stub
				List<Users> Users=UsersDao.selectAllUsers();
				model.addAttribute("Users", Users);
				return "admin/changeUsers";
	}

	@Override
	public String addUser(Model model) {
		// TODO Auto-generated method stub
//				List<Users> Users=UsersDao.selectAllUsers();
//				model.addAttribute("Users", Users);
				return "admin/addUsers";
	}
	
	@Override
	public String UsersLogin(Users Users, Model model,HttpSession session) {
		// TODO Auto-generated method stub
		Users Users1=UsersDao.usersLogin(Users);
		if(Users1!=null) {
			session.setAttribute("users", Users1);
			return "users/home";
		}else {
			JOptionPane.showMessageDialog(null, "账号或者密码不正确！");
			return "users/login";
		}
		
	}
	
	@Override
	public String selectUsersByID1(int uid, Model model) {
		// TODO Auto-generated method stub
		Users User=UsersDao.selectUsersByID(uid);
		model.addAttribute("users", User);
		return "admin/updateUsers";
	}
	
	@Override
	public String deleteUsersByID(int uid,Model model) {
		// TODO Auto-generated method stub
		UsersDao.deleteUsersByID(uid);
		List<Users> Users=UsersDao.selectAllUsers();
		model.addAttribute("Users", Users);
		return "admin/showUsers";
	}
	@Override
	public String updateUsersByID(Users Users,HttpSession session) {
		// TODO Auto-generated method stub
		
		int t=UsersDao.updateUsersByID(Users);
		if(t>0) {
			
			session.invalidate();
			return "users/succ";
		}else {
			return "users/error";
		}
	}
	@Override
	public String updateUsersByID2(Users Users,HttpSession session) {
		// TODO Auto-generated method stub
		
		int t=UsersDao.updateUsersByID(Users);
		if(t>0) {
			
			session.invalidate();
			return "admin/succ";
		}else {
			return "admin/error";
		}
	}

}
