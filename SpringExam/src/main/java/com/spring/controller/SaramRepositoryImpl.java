package com.spring.controller;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SaramRepositoryImpl implements SaramRepository {

	@Autowired
	SqlSessionTemplate sqlSesstionTemplate;
	
	@Override
	public void insert(Map<String, Object> map) {
		sqlSesstionTemplate.insert("saram.insert",map);
		
	}
	@Override
	public List<Map<String, Object>> select(){
		
		return saramRepository.select();
	}
}
