package com.services;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.bean.OrderDetail;
import com.bean.Orders;

import com.bean.Orders;

import com.bean.Users;
import com.dao.OrderDetailDao;
import com.dao.OrdersDao;
import com.pojo.Orderss;


@Service("OrdersServices")
public class OrdersServicesImpl implements OrdersServices{
    @Autowired
	private OrdersDao ordersDao;
    @Autowired
   	private OrderDetailDao orderDetailDao;

	@Override
	public String selectOrdersByUid(Model model,HttpSession session) {
		// TODO Auto-generated method stub
		Users Users=(Users) session.getAttribute("users");
		if(Users==null) {
			return "users/needLogin";
		}else {
			List<Orderss>  orders=ordersDao.selectOrdersByUid(Users.getUid());
		model.addAttribute("orders", orders);
		return "users/showOrders" ;
	}}
	@Override
	public String deleteOrdersByID(int oid,Model model,HttpSession session) {
		// TODO Auto-generated method stub
		ordersDao.deleteOrdersByID(oid);
		Users Users=(Users) session.getAttribute("users");
		if(Users==null) {
			return "users/needLogin";
		}else {
			List<Orderss>  orders=ordersDao.selectOrdersByUid(Users.getUid());
		model.addAttribute("orders", orders);
	    return "users/showOrders";
	}
	}

	@Override
	public String addOrders(Orders Orders, HttpSession session,OrderDetail OrderDetail) {
		// TODO Auto-generated method stub
		Users Users=(Users) session.getAttribute("users");
		if(Users==null) {
			return "users/needLogin";
		}else {
			Orders.setTotal(Orders.getNums()*Orders.getPrice());
			OrderDetail.setTotal(Orders.getNums()*Orders.getPrice());
			Date d = new Date();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Orders.setWj(sdf.format(d)+"");
			Orders.setUid(Users.getUid());
			OrderDetail.setWj(sdf.format(d)+"");
			OrderDetail.setUid(Users.getUid());
			orderDetailDao.addOrderDetail(OrderDetail);
		int t=ordersDao.addOrders(Orders);
		if(t>0) {
			return "users/succ";
		}else {
			return "users/error";
		}
	}
	}}
	

