package com.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bean.Sort;
import com.services.SortServices;
@Controller
public class SortController {
	@Autowired
	private SortServices SortServices;
	
	@RequestMapping("/addSort")
	public String addSort(Sort Sort) {
		return SortServices.addSort(Sort);
	}
	
	@RequestMapping("/selectAllSort")
	public String selectAllSort(Model model) {
		return SortServices.selectAllSort(model);
	}
	@RequestMapping("/selectAllSort1")
	public String selectAllSort1(Model model) {
		
		return SortServices.selectAllSort1(model);
	}
	@RequestMapping("/selectAllSort2")
	public String selectAllSort2(Model model) {
		
		return SortServices.selectAllSort2(model);
	}
	@RequestMapping("/deleteSortByID")
	public String deleteSortByID(int sid,Model model) {
		
		return SortServices.deleteSortByID(sid, model);
	}
	
	
}
