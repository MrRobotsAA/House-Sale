package com.services;


import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.bean.House;


public interface HouseServices {

   public String addHouse(House House,HttpServletRequest request,MultipartFile photo);
   public String selectAllHouse(Model model);
   public String selectAllHouse1(Model model);
   public String selectAllHouse2(Model model);
   public String deleteHouseByID(int hid, Model model);
   public String selectHouseByID(int hid, Model model);
   public String selectHouseByID1(int hid, Model model);
   public String updateHouseByID(House House);
   public String selectHouseByHname(String hname, Model model);
   public String selectHouseBySname(String sname, Model model);
   
   public String selectHouseByPosition(String sname, Model model);
   public String selectHouseByPrice(String sname, Model model);
   
   public String selectAllHouse3(Model model);
   public String updateHouseByID2(House House,Model model);
   
  
   
}
