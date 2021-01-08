package com.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import com.bean.OrderDetail;
import com.bean.Orders;




public interface OrdersServices {

  public String addOrders(Orders Orders,HttpSession session,OrderDetail OrderDetail);
   public String deleteOrdersByID(int oid, Model model,HttpSession session);
   public String selectOrdersByUid(Model model,HttpSession session);
  


  
   
}
