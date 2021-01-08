package com.dao;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.bean.Admin;
@Mapper
@Repository
public interface AdminDao {
   public Admin adminLogin (Admin admin);
}
