package com.example.project0529.sales.service;

import java.util.List;
import java.util.Map;

import com.example.project0529.sales.model.Sales;


public interface SalesService {

	public List<Map<String, String>> listSales(Sales sales);

	public List<Map<String, String>> listCheck();


}
