package com.icia.TravelMaker.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.TravelMaker.dto.PackageDTO;
import com.icia.TravelMaker.dto.PackageDetailDTO;
import com.icia.TravelMaker.dto.PackageScheduleDTO;
import com.icia.TravelMaker.dto.RefundListDTO;
import com.icia.TravelMaker.dto.ReviewListDTO;

@Repository
public class SalesDAO {

	@Autowired
	private SqlSessionTemplate sql;

	public List<PackageDTO> packageList() {
		return sql.selectList("Sales.packageList");
	}

	public PackageDetailDTO packageDetail(PackageDTO dto) {
		return sql.selectOne("Sales.packageDetail", dto);
	}

	public List<PackageScheduleDTO> packageSchedule(PackageDTO dto) {
		return sql.selectList("Sales.packageSchedule", dto);
	}
	

	public List<ReviewListDTO> reviewList(PackageDTO dto) {
		return sql.selectList("Sales.reviewList", dto);
	}

	public List<RefundListDTO> refundlist() {

		return sql.selectList("Sales.refundlist");
	}

	public RefundListDTO refundlistAjax(RefundListDTO refunddto) {
		System.out.println("여기는 DAO : " + refunddto.toString());
		RefundListDTO refund = sql.selectOne("Sales.refundlistAjax", refunddto);
		System.out.println("여기는 DAO2222"+refund.toString());
		return refund;
	}

}
