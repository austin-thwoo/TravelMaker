package com.icia.TravelMaker.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.TravelMaker.dao.AdminDAO;
import com.icia.TravelMaker.dto.AdminJobListDTO;
import com.icia.TravelMaker.dto.BoardCategoryDTO;
import com.icia.TravelMaker.dto.CategoryDTO;
import com.icia.TravelMaker.dto.MemberDTO;
import com.icia.TravelMaker.dto.PackageDTO;

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

}
