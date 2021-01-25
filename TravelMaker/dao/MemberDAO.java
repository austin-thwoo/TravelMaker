package com.icia.TravelMaker.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.TravelMaker.dto.MemberDTO;
import com.icia.TravelMaker.dto.MyInfoDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public MemberDTO login(MemberDTO dto) {
		return sql.selectOne("Member.login", dto);
	}

	public void accessInsert(MemberDTO dto) {
		sql.insert("Member.accessInsert", dto);
	}

	public MyInfoDTO myPage(MemberDTO dto) {
		return sql.selectOne("Member.myPage", dto);
	}

	public String idCheck(MemberDTO dto) {
		return sql.selectOne("Member.idCheck", dto);
	}

	public String nickCheck(MemberDTO dto) {
		return sql.selectOne("Member.nickCheck", dto);
	}

	public int memberJoin(MemberDTO dto) {
		return sql.insert("Member.memberJoin", dto);
	}

}
