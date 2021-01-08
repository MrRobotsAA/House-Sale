package com.services;

import org.springframework.ui.Model;

import com.bean.Notice;


public interface NoticeServices {

   public String addNotice(Notice notice);
   public String selectAllNotice(Model model);
   public String deleteNoticeByID(int nid,Model model);
   public String selectNoticeByID(int nid,Model model);
   public String selectAllNotice1(Model model);
  
   
}
