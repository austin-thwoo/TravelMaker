package com.icia.TravelMaker.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.TravelMaker.dto.BoardListDTO;
import com.icia.TravelMaker.dto.CartListDTO;
import com.icia.TravelMaker.dto.CategoryDTO;
import com.icia.TravelMaker.dto.CommentsListDTO;
import com.icia.TravelMaker.dto.LikeListDTO;
import com.icia.TravelMaker.dto.MemberDTO;
import com.icia.TravelMaker.dto.MemberInfoDTO;
import com.icia.TravelMaker.dto.PointDTO;
import com.icia.TravelMaker.dto.ReviewListDTO;
import com.icia.TravelMaker.dto.ShoppingListDTO;

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

	public MemberInfoDTO myPage(MemberDTO dto) {
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

	public List<CategoryDTO> preferenceList(MemberDTO dto) {
		return sql.selectList("Member.preferenceList", dto);
	}

	public List<CartListDTO> cartList(MemberDTO dto) {
		return sql.selectList("Member.cartList", dto);
	}

	public List<LikeListDTO> likeList(MemberDTO dto) {
		return sql.selectList("Member.likeList", dto);
	}

	public List<BoardListDTO> myBoardList(Map<String, Object> map) {
		return sql.selectList("Member.myBoardList", map);
	}

	public List<PointDTO> pointHistory(MemberDTO dto) {
		return sql.selectList("Member.pointHistory", dto);
	}

	public List<ShoppingListDTO> shoppingList(MemberDTO dto) {
		return sql.selectList("Member.shoppingList", dto);
	}

	public String passwordCheck(MemberDTO dto) {
		return sql.selectOne("Member.passwordCheck", dto);
	}

	public void passwordUpdate(MemberDTO dto) {
		sql.update("Member.passwordUpdate", dto);
	}

	public MemberDTO memberInfo(MemberDTO dto) {
		return sql.selectOne("Member.memberInfo", dto);
	}

	public void memberUpdate(MemberDTO dto) {
		sql.update("Member.memberUpdate", dto);
	}

	public List<CommentsListDTO> myCommentsList(MemberDTO dto) {
		return sql.selectList("Member.myCommentsList", dto);
	}

	public List<ReviewListDTO> myReviewList(MemberDTO dto) {
		return sql.selectList("Member.myReviewList", dto);
	}

}
