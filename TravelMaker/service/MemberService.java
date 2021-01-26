package com.icia.TravelMaker.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.TravelMaker.dao.MemberDAO;
import com.icia.TravelMaker.dto.BoardListDTO;
import com.icia.TravelMaker.dto.CartListDTO;
import com.icia.TravelMaker.dto.CategoryDTO;
import com.icia.TravelMaker.dto.LikeListDTO;
import com.icia.TravelMaker.dto.MemberDTO;
import com.icia.TravelMaker.dto.MyInfoDTO;
import com.icia.TravelMaker.dto.PointDTO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;
	
	public MemberDTO login(MemberDTO dto) {
		MemberDTO result = dao.login(dto);
		if(result != null) {
			dao.accessInsert(dto);
		}
		return result;
	}

	public MyInfoDTO myPage(MemberDTO dto) {
		return dao.myPage(dto);
	}

	public String idCheck(MemberDTO dto) {
		return dao.idCheck(dto);
	}

	public String nickCheck(MemberDTO dto) {
		return dao.nickCheck(dto);
	}

	public int memberJoin(MemberDTO dto) {
		return dao.memberJoin(dto);
	}

	public List<CategoryDTO> preferenceList(MemberDTO dto) {
		return dao.preferenceList(dto);
	}

	public List<CartListDTO> cartList(MemberDTO dto) {
		return dao.cartList(dto);
	}

	public List<LikeListDTO> listList(MemberDTO dto) {
		return dao.likeList(dto);
	}

	public List<BoardListDTO> myBoardList(MemberDTO dto, int i) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member", dto);
		map.put("search", i);
		return dao.myBoardList(map);
	}

	public List<PointDTO> pointHistory(MemberDTO dto) {
		return dao.pointHistory(dto);
	}

}
