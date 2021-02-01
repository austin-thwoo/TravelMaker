package com.icia.TravelMaker.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.TravelMaker.dao.BoardDAO;
import com.icia.TravelMaker.dto.BoardCategoryDTO;
import com.icia.TravelMaker.dto.BoardDTO;
import com.icia.TravelMaker.dto.BoardDetailDTO;
import com.icia.TravelMaker.dto.BoardListDTO;
import com.icia.TravelMaker.dto.CommentsDTO;
import com.icia.TravelMaker.dto.CommentsListDTO;

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

	public List<BoardListDTO> boardList(BoardCategoryDTO dto) {
		return dao.boardList(dto);
	}

	public BoardCategoryDTO boardCategory(BoardCategoryDTO dto) {
		return dao.boardCategory(dto);
	}

	public BoardDetailDTO boardDetail(BoardDTO dto) {
		return dao.boardDetail(dto);
	}

	public List<CommentsListDTO> commentsList(BoardDTO dto) {
		return dao.commentsList(dto);
	}

	public void commentsInsert(CommentsDTO dto) {
		dao.commentsInsert(dto);
	}

	public List<BoardCategoryDTO> boardCategoryList() {
		return dao.boardCategoryList();
	}

	public int boardUpdate(BoardDTO dto) {
		return dao.boardUpdate(dto);
	}

}
