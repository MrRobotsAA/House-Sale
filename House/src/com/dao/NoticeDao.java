package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.bean.Notice;
@Mapper
@Repository("noticeDao")
public interface NoticeDao {
    public int addNotice(Notice notice);
    public List<Notice> selectAllNotice();
	public int deleteNoticeByID(int nid);
	public Notice selectNoticeByID(int nid);
	
	
}
