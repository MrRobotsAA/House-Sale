package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.OrderDetail;
import com.bean.Orders;

import com.services.OrdersServices;
@Controller
public class OrdersController {
	@Autowired
	private OrdersServices OrdersServices;
	@RequestMapping("/addOrders")
	public String addOrders(Orders Orders,HttpSession session,OrderDetail OrderDetail) {
		return OrdersServices.addOrders(Orders, session,OrderDetail);
	}
	
	
	@RequestMapping("/deleteOrdersByID")
	public String deleteOrdersByID(int oid,Model model,HttpSession session) {
		
		return OrdersServices.deleteOrdersByID(oid, model,session);
	}
	
	@RequestMapping("/selectOrdersByUid")
	public String selectOrdersByUid(Model model,HttpSession session) {
		
		return OrdersServices.selectOrdersByUid( model,session);
   }
	
	
	
}
