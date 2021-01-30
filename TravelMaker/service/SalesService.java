package com.icia.TravelMaker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.icia.TravelMaker.dao.SalesDAO;
import com.icia.TravelMaker.dto.PackageDTO;
import com.icia.TravelMaker.dto.PackageDetailDTO;
import com.icia.TravelMaker.dto.PackageScheduleDTO;
import com.icia.TravelMaker.dto.RefundListDTO;
import com.icia.TravelMaker.dto.ReviewListDTO;

@Service
public class SalesService {

	@Autowired
	private SalesDAO dao;

	public List<PackageDTO> packageList() {
		return dao.packageList();
	}

	public PackageDetailDTO packageDetail(PackageDTO dto) {
		return dao.packageDetail(dto);
	}

	public List<PackageScheduleDTO> packageSchedule(PackageDTO dto) {
		return dao.packageSchedule(dto);
	}

	public List<ReviewListDTO> reviewList(PackageDTO dto) {
		return dao.reviewList(dto);
	}

	public List<RefundListDTO> refundlist() {
		
		return dao.refundlist();
	}

	public RefundListDTO refundlistAjax(RefundListDTO refunddto) {
		System.out.println("여기는 서비스");
		
		refunddto.setODATE(refunddto.getODATE().substring(0, 19));
		return dao.refundlistAjax(refunddto);
	}

	
}
