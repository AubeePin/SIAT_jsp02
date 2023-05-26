package com.spring.controller;

import java.util.List;
import java.util.Map;

public interface SaramService {

	void insert(Map<String, Object> map);

	List<Map<String, Object>> select();
			
}
