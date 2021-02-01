package com.icia.TravelMaker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.icia.TravelMaker.dao.SalesDAO;
import com.icia.TravelMaker.dto.CartListDTO;
import com.icia.TravelMaker.dto.LikeListDTO;
import com.icia.TravelMaker.dto.MemberDTO;
import com.icia.TravelMaker.dto.PackageDTO;
import com.icia.TravelMaker.dto.PackageDetailDTO;
import com.icia.TravelMaker.dto.PackageScheduleDTO;
import com.icia.TravelMaker.dto.PointDTO;
import com.icia.TravelMaker.dto.ReviewDTO;
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

	public PointDTO pointInfo(MemberDTO dto) {
		return dao.pointInfo(dto);
	}

	public void reviewInsert(ReviewDTO dto) {
		dao.reviewInsert(dto);
	}

	public int likeInsert(LikeListDTO dto) {
		return dao.likeInsert(dto);
	}

	public int likeDelete(LikeListDTO dto) {
		return dao.likeDelete(dto);
	}

	public int cartInsert(CartListDTO dto) {
		dto.setPSSTART(dto.getPSSTART().substring(0, 19));
		return dao.cartInsert(dto);
	}

	public int cartDelete(CartListDTO dto) {
		dto.setPSSTART(dto.getPSSTART().substring(0, 19));
		return dao.cartDelete(dto);
	}

}
