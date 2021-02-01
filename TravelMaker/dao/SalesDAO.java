package com.icia.TravelMaker.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.TravelMaker.dto.CartListDTO;
import com.icia.TravelMaker.dto.LikeListDTO;
import com.icia.TravelMaker.dto.MemberDTO;
import com.icia.TravelMaker.dto.PackageDTO;
import com.icia.TravelMaker.dto.PackageDetailDTO;
import com.icia.TravelMaker.dto.PackageScheduleDTO;
import com.icia.TravelMaker.dto.PointDTO;
import com.icia.TravelMaker.dto.ReviewDTO;
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

	public PointDTO pointInfo(MemberDTO dto) {
		return sql.selectOne("Sales.pointInfo", dto);
	}

	public void reviewInsert(ReviewDTO dto) {
		sql.insert("Sales.reviewInsert", dto);
	}

	public int likeInsert(LikeListDTO dto) {
		return sql.insert("Sales.likeInsert", dto);
	}

	public int likeDelete(LikeListDTO dto) {
		return sql.delete("Sales.likeDelete", dto);
	}

	public int cartInsert(CartListDTO dto) {
		return sql.insert("Sales.cartInsert", dto);
	}

	public int cartDelete(CartListDTO dto) {
		return sql.delete("Sales.cartDelete", dto);
	}

}
