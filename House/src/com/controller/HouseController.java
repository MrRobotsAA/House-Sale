package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.bean.House;

import com.bean.Users;

import com.services.HouseServices;
@Controller
public class HouseController {
	@Autowired
	private HouseServices HouseServices;
	
	@RequestMapping("/addHouse")
	public String addHouse1(House House,HttpServletRequest request,Model model,MultipartFile file,HttpSession session) {
		
			return HouseServices.addHouse(House,request,file);	
		}
	@RequestMapping("/selectAllHouse")
	public String selectAllHouse(Model model) {
		
		return HouseServices.selectAllHouse(model);
	}
	@RequestMapping("/selectAllHouse1")
	public String selectAllHouse1(Model model) {
		
		return HouseServices.selectAllHouse1(model);
	}
	@RequestMapping("/selectAllHouse2")
	public String selectAllHouse2(Model model) {
		
		return HouseServices.selectAllHouse2(model);
	}
	@RequestMapping("/selectAllHouse3")
	public String selectAllHouse3(Model model) {
		
		return HouseServices.selectAllHouse3(model);
	}
	
	@RequestMapping("/deleteHouseByID")
	public String deleteHouseByID(int hid,Model model) {
		
		return HouseServices.deleteHouseByID(hid,model);
	}
	@RequestMapping("/selectHouseByID")
	public String selectTypeByID(int hid,Model model) {
		
		return HouseServices.selectHouseByID(hid, model);
}
	
	@RequestMapping("/updateHouseByID")
	public String updateHouseByID(House House) {
		
			return HouseServices.updateHouseByID(House);
			
		}
	@RequestMapping("/selectHouseBySname")
	public String selectHouseBySname(String sname,Model model) {
		
		return HouseServices.selectHouseBySname(sname, model);
}
	@RequestMapping("/selectHouseByPosition")
	public String selectHouseByPosition(String hname,Model model) {
		return HouseServices.selectHouseByPosition(hname, model);
}
	@RequestMapping("/selectHouseByPrice")
	public String selectHouseByPrice(String hname,Model model) {
		return HouseServices.selectHouseByPrice(hname, model);
}
	@RequestMapping("/selectHouseByHname")
	public String selectHouseByHname(String hname,Model model) {
		return HouseServices.selectHouseByHname(hname, model);
}
	
	@RequestMapping("/selectHouseByID1")
	public String selectHouseByID1(int hid,Model model) {
		
		return HouseServices.selectHouseByID1(hid, model);
}
	@RequestMapping("/updateHouseByID2")
public String updateHouseByID2(House House,Model model) {
	
	return HouseServices.updateHouseByID2(House,model);
	
}
	
}
