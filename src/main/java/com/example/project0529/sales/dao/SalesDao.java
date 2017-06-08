package com.example.project0529.sales.dao;

import java.util.List;
import java.util.Map;

import com.example.project0529.sales.model.Sales;


public interface SalesDao {

	public List<Map<String, String>> list(Sales sales);

	public List<Map<String, String>> checkList();

}
