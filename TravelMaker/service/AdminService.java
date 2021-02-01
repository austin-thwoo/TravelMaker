package com.icia.TravelMaker.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.TravelMaker.dao.AdminDAO;
import com.icia.TravelMaker.dto.AdminJobListDTO;
import com.icia.TravelMaker.dto.BoardCategoryDTO;
import com.icia.TravelMaker.dto.BoardComplaintDetailDTO;
import com.icia.TravelMaker.dto.BoardDTO;
import com.icia.TravelMaker.dto.BoardListDTO;
import com.icia.TravelMaker.dto.CategoryDTO;
import com.icia.TravelMaker.dto.CommentsComplaintDetailDTO;
import com.icia.TravelMaker.dto.CommentsDTO;
import com.icia.TravelMaker.dto.CommentsListDTO;
import com.icia.TravelMaker.dto.MemberDTO;
import com.icia.TravelMaker.dto.MemberListDTO;
import com.icia.TravelMaker.dto.MemberInfoDTO;
import com.icia.TravelMaker.dto.PackageDTO;
import com.icia.TravelMaker.dto.PointDTO;
import com.icia.TravelMaker.dto.TravelerListDTO;

@Service
public class AdminService {

	@Autowired
	private AdminDAO dao;
	
	public void boardCategoryInsert(BoardCategoryDTO dto) {
		dao.boardCategoryInsert(dto);
	}

	public List<BoardCategoryDTO> boardCategoryList() {
		return dao.boardCategoryList();
	}
	
	public void packageInsert(PackageDTO dto) throws IllegalStateException, IOException {
		if(!dto.getPIMGFILE().isEmpty()) {
			dto.setPIMG(System.currentTimeMillis()+"_"+dto.getPIMGFILE().getOriginalFilename());
			dto.getPIMGFILE().transferTo(new File("D:\\ICIA\\Jong Won\\Team_404\\TravelMaker_Proj\\TravelMaker\\src\\main\\webapp\\resources\\packageFile\\"+dto.getPIMG()));
		}else {
			dto.setPIMG("test");
		}
		dao.packageInsert(dto);
	}

	public List<AdminJobListDTO> jobList(MemberDTO dto) {
		return dao.jobList(dto);
	}

	public List<CategoryDTO> categoryList() {
		return dao.categoryList();
	}

	public void categoryInsert(CategoryDTO dto) {
		dao.categoryInsert(dto);
	}

	public void jobListInsert(AdminJobListDTO dto) {
		dao.jobListInsert(dto);
	}

	public List<BoardListDTO> complaintBoardList() {
		return dao.complaintBoardList();
	}

	public List<TravelerListDTO> travelerList() {
		
		return dao.travelerList();
	}

	public List<CommentsListDTO> complaintCommentsList() {
		return dao.complaintCommentsList();
	}

	public List<MemberListDTO> memberList(MemberDTO dto) {
		return dao.memberList(dto);
	}

	public void memberStateUpdate(MemberDTO dto) {
		if(dao.memberStateUpdate(dto) == 1 && dto.getMSTATE() == -1) {
			dao.accountBanInsert(dto);
		}
	}

	public void commentsLock(CommentsDTO dto) {
		dto.setCMDATE(dto.getCMDATE().substring(0, 19));
		dao.commentsLock(dto); 
	}

	public void boardLock(BoardDTO dto) {
		dao.boardLock(dto);
	}

	public PackageDTO packageDetail(PackageDTO dto) {
		return dao.packageDetail(dto);
	}

	public void packageUpdate(PackageDTO dto) {
		dao.packageUpdate(dto);
	}

	public List<BoardComplaintDetailDTO> complaintBoardDetail(BoardDTO dto) {
		return dao.complaintBoardDetail(dto);
	}

	public List<CommentsComplaintDetailDTO> complaintCommentsDetail(CommentsDTO dto) {
		dto.setCMDATE(dto.getCMDATE().substring(0, 19));
		return dao.complaintCommentsDetail(dto);
	}

	public String boardCategoryCheck(BoardCategoryDTO dto) {
		return dao.boardCategoryCheck(dto);
	}

	public void boardCategoryUpdate(BoardCategoryDTO dto) {
		dao.boardCategoryUpdate(dto);
	}

	public void categoryUpdate(CategoryDTO dto) {
		dao.categoryUpdate(dto);
	}

	public String categoryCheck(CategoryDTO dto) {
		return dao.categoryCheck(dto);
	}

	public MemberInfoDTO memberInfo(MemberDTO dto) {
		return dao.memberInfo(dto);
	}

	public void pointInsert(PointDTO dto) {
		dao.pointInsert(dto);
	}

}
