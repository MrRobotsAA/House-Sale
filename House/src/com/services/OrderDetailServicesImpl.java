package com.services;

import java.util.List;

import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import com.bean.OrderDetail;
import com.bean.Users;
import com.dao.HouseDao;
import com.dao.OrderDetailDao;
import com.dao.OrdersDao;
import com.dao.UsersDao;
import com.pojo.OrderDetails;
@Service("OrderDetailservices")
public class OrderDetailServicesImpl implements OrderDetailServices{
    @Autowired
	private OrderDetailDao OrderDetailDao;
    @Autowired
	private OrdersDao ordersDao;
    @Autowired
	private HouseDao houseDao;
    @Autowired
	private UsersDao usersDao;
    
	@Override
	public String selectAllOrderDetail(Model model) {
		// TODO Auto-generated method stub
				List<OrderDetails> OrderDetail=OrderDetailDao.selectAllOrderDetail();
				model.addAttribute("OrderDetail", OrderDetail);
				return "admin/showOrderDetail";
	}
	@Override
	public String selectAllOrderDetail1(Model model) {
		// TODO Auto-generated method stub
				List<OrderDetails> OrderDetail=OrderDetailDao.selectAllOrderDetail1();
				model.addAttribute("OrderDetail", OrderDetail);
				return "admin/showOrderDetail1";
	}
	

	@Override
	public String deleteOrderDetailByID(int oid,Model model) {
		// TODO Auto-generated method stub
		OrderDetailDao.deleteOrderDetailByID(oid);
		List<OrderDetails> OrderDetail=OrderDetailDao.selectAllOrderDetail1();
		model.addAttribute("OrderDetail", OrderDetail);
		JOptionPane.showMessageDialog(null, "操作成功，系统已自动刷新相应用户等级！");
	    return "admin/showOrderDetail1";
	}
	@Override
	public String updateOrderDetail(String wj,Model model,int hid,int uid) {
		// TODO Auto-generated method stub
		OrderDetailDao.updateOrderDetail(wj);
		ordersDao.UpdateOrders(wj);
		houseDao.updateHouseByID1(hid);
		Users tmp = new Users();
		tmp.setUid(uid);
		usersDao.updateUsersByID2(tmp);
		JOptionPane.showMessageDialog(null, "操作成功，用户等级已自动更新！");
	    return "admin/succ";
	}


	
	

}
