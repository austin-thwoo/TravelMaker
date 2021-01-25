package com.icia.TravelMaker.service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.TravelMaker.dao.BoardDAO;
import com.icia.TravelMaker.dto.BoardDTO;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;
	
	public int boardInsert(BoardDTO dto) throws IllegalStateException, IOException {
		if(!dto.getBIMGFILE().isEmpty()) {
			dto.setBIMG(System.currentTimeMillis()+"_"+dto.getBIMGFILE().getOriginalFilename());
			dto.getBIMGFILE().transferTo(new File("D:\\ICIA\\Jong Won\\Team_404\\TravelMaker_Proj\\TravelMaker\\src\\main\\webapp\\resources\\boardFile\\"+dto.getBIMG()));
		}else {
			dto.setBIMG("test");
		}
		return dao.boardInsert(dto);
	}

}