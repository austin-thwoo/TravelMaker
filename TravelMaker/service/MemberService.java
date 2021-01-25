package com.icia.TravelMaker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.TravelMaker.dao.MemberDAO;
import com.icia.TravelMaker.dto.MemberDTO;
import com.icia.TravelMaker.dto.MyInfoDTO;

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

}
