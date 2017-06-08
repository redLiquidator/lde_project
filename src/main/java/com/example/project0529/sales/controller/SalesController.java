package com.example.project0529.sales.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.project0529.sales.model.Sales;
import com.example.project0529.sales.service.SalesService;

@Controller
@RequestMapping("/sales/*")
public class SalesController {

	@Inject
	SalesService salesService;
	
	@RequestMapping("/list.do")
	public ModelAndView list(ModelAndView mav, @ModelAttribute Sales sales){
		System.out.println("controller : " + sales);
		System.out.println(sales.getArea_cd());
		mav.setViewName("/sales/salesList");
		mav.addObject("list", salesService.listSales(sales));
		mav.addObject("cd", salesService.listCheck());
		return mav;
	}
	
}
