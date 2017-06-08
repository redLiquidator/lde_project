package com.example.project0529.sales.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.project0529.sales.model.Sales;


@Repository
public class SalesDaoImpl implements SalesDao{

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<Map<String, String>> list(Sales sales) {
		// TODO Auto-generated method stub
		System.out.println("dao : " + sales);
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("area_cd", sales.getArea_cd());
		return sqlSession.selectList("sales.salesList", sales);
	}	

	@Override
	public List<Map<String, String>> checkList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("sales.cdCount");
	}

}
