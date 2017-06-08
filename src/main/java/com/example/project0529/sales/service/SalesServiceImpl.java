package com.example.project0529.sales.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.project0529.sales.dao.SalesDao;
import com.example.project0529.sales.model.Sales;

@Service
public class SalesServiceImpl implements SalesService{

	@Inject
	SalesDao salesDao;
	
	@Override
	public List<Map<String, String>> listSales(Sales sales) {
		// TODO Auto-generated method stub
		System.out.println("service : " + sales);
		return salesDao.list(sales);
	}

	@Override
	public List<Map<String, String>> listCheck() {
		// TODO Auto-generated method stub
		return salesDao.checkList();
	}
}
