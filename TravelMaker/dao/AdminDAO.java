package com.icia.TravelMaker.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.TravelMaker.dto.AdminJobListDTO;
import com.icia.TravelMaker.dto.BoardCategoryDTO;
import com.icia.TravelMaker.dto.BoardListDTO;
import com.icia.TravelMaker.dto.CategoryDTO;
import com.icia.TravelMaker.dto.CommentsListDTO;
import com.icia.TravelMaker.dto.MemberDTO;
import com.icia.TravelMaker.dto.PackageDTO;
import com.icia.TravelMaker.dto.TravelerListDTO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public void boardCategoryInsert(BoardCategoryDTO dto) {
		sql.insert("Admin.boardCategoryInsert", dto);
	}

	public List<BoardCategoryDTO> boardCategoryList() {
		return sql.selectList("Admin.boardCategoryList");
	}
	
	public void packageInsert(PackageDTO dto) {
		sql.insert("Admin.packageInsert", dto);
	}

	public List<AdminJobListDTO> jobList(MemberDTO dto) {
		return sql.selectList("Admin.adminJobList", dto);
	}

	public List<CategoryDTO> categoryList() {
		return sql.selectList("Admin.categoryList");
	}

	public void categoryInsert(CategoryDTO dto) {
		sql.insert("Admin.categoryInsert", dto);
	}

	public void jobListInsert(AdminJobListDTO dto) {
		sql.insert("Admin.jobListInsert", dto);
	}

	public List<BoardListDTO> complaintBoardList() {
		return sql.selectList("Admin.complaintBoardList");
	}

	public List<TravelerListDTO> travelerList() {
		return sql.selectList("Admin.travelerList");
	}

	public List<CommentsListDTO> complaintCommentsList() {
		return sql.selectList("Admin.complaintCommentsList");
	}

}
