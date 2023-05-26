package com.spring.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SaramServiceImpl implements SaramService {

	@Autowired
	SaramRepository saramRepository;
	
	@Override
	public void insert(Map<String, Object> map) {
		saramRepository.insert(map);

	}public List<Map<String, Object>> select(){
		
		return saramRepository.select();
	}

}