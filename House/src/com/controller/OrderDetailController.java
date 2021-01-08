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
import com.bean.Orders;
import com.bean.OrderDetail;
import com.services.OrderDetailServices;
import com.services.OrdersServices;
@Controller
public class OrderDetailController {
	@Autowired
	private OrderDetailServices OrderDetailServices;
	
	
	
	@RequestMapping("/deleteOrderDetailByID")
	public String deleteOrderDetailByID(int oid,Model model) {
		
		return OrderDetailServices.deleteOrderDetailByID(oid, model);
	}
	
	@RequestMapping("/selectAllOrderDetail")
	public String selectAllOrderDetail(Model model) {
		return OrderDetailServices.selectAllOrderDetail(model);
	}
	@RequestMapping("/selectAllOrderDetail1")
	public String selectAllOrderDetail1(Model model) {
		return OrderDetailServices.selectAllOrderDetail1(model);
	}
	@RequestMapping("/updateOrderDetail")
	public String updateOrderDetail(String wj,Model model,int hid,int uid) {

		return OrderDetailServices.updateOrderDetail(wj, model,hid,uid);
	}
	
	
	
}
