package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.bean.Sort;
@Mapper
@Repository("SortDao")
public interface SortDao {
    public int addSort(Sort Sort);
    public List<Sort> selectAllSort();
	public int deleteSortByID(int sid);
	
}
