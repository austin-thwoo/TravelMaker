package com.icia.TravelMaker.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.TravelMaker.dto.PackageDTO;

@Repository
public class SalesDAO {

	@Autowired
	private SqlSessionTemplate sql;

}
