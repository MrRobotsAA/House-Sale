package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.bean.Users;
@Mapper
@Repository("UsersDao")
public interface UsersDao {
    public int addUsers(Users Users);
    public int addUsers2(Users Users);
    public List<Users> selectAllUsers();
	public int deleteUsersByID(int uid);
	public Users usersLogin (Users Users);
	public int updateUsersByID(Users Users);
	public int updateUsersByID2(Users Users);
	public Users selectUsersByID(int uid);
}
