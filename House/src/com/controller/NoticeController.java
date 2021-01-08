package com.controller;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bean.Notice;
import com.services.NoticeServices;
@Controller
public class NoticeController {
	@Autowired
	private NoticeServices noticeServices;
	
	@RequestMapping("/addNotice")
	public String addNotice(Notice notice) {
		
		return noticeServices.addNotice(notice);
	}
	@RequestMapping("/selectAllNotice")
	public String selectAllNotice(Model model) {
		return noticeServices.selectAllNotice(model);
	}
	@RequestMapping("/selectAllNotice1")
	public String selectAllNotice1(Model model) {
		return noticeServices.selectAllNotice1(model);
	}
	@RequestMapping("/deleteNoticeByID")
	public String deleteNoticeByID(int nid,Model model) {
		return noticeServices.deleteNoticeByID(nid,model);
	}
	@RequestMapping("/selectNoticeByID")
	public String selectNoticeByID(int nid,Model model) {
		return noticeServices.selectNoticeByID(nid,model);
	}
	
	
}
