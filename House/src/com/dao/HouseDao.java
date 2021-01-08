package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.bean.House;

@Mapper
@Repository("HouseDao")
public interface HouseDao {
    public int addHouse(House House);
	public int deleteHouseByID(int hid);
	public int updateHouseByID(House House);
	public int updateHouseByID1(int hid);
	public List<House> selectAllHouse();
	public List<House> selectHouseBySname(String sname);
	public List<House> selectHouseByHname(String hname);
	
	public List<House> selectHouseByPosition(String address);
	public List<House> selectHouseByPrice(String price);
	

	
	public House selectHouseByID(int hid);
	public List<House> selectAllHouse1();
	public List<House> selectAllHouse2();
	public int updateHouseByID2(int hid);
	
}
