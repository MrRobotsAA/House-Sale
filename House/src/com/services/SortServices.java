package com.services;

import org.springframework.ui.Model;

import com.bean.Sort;


public interface SortServices {

   public String addSort(Sort Sort);
   public String selectAllSort(Model model);
   public String selectAllSort1(Model model);
   public String selectAllSort2(Model model);
   public String deleteSortByID(int kid,Model model);
   
}
