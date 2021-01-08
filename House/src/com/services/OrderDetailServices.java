package com.services;

import org.springframework.ui.Model;

import com.bean.OrderDetail;


public interface OrderDetailServices {


   public String selectAllOrderDetail(Model model);
   public String selectAllOrderDetail1(Model model);
   public String deleteOrderDetailByID(int oid,Model model);
   public String updateOrderDetail(String wj,Model model,int hid,int uid);

   
}
