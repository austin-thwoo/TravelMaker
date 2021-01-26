package com.icia.TravelMaker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.icia.TravelMaker.dao.SalesDAO;
import com.icia.TravelMaker.dto.PackageDTO;

@Service
public class SalesService {

	@Autowired
	private SalesDAO dao;

	public List<PackageDTO> packageList() {
		return dao.packageList();
	}

}
