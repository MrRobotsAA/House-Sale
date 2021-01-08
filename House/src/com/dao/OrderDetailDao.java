package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.bean.OrderDetail;
import com.pojo.OrderDetails;


@Mapper
@Repository("OrderDetailDao")
public interface OrderDetailDao {
    public int addOrderDetail(OrderDetail OrderDetail);
	public int deleteOrderDetailByID(int oid);
	public List<OrderDetails> selectAllOrderDetail();
	public List<OrderDetails> selectAllOrderDetail1();
	public int updateOrderDetail(String wj);
	
}
