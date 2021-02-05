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
import com.icia.TravelMaker.dto.BoardLikeDTO;
import com.icia.TravelMaker.dto.BoardListDTO;
import com.icia.TravelMaker.dto.CommentsDTO;
import com.icia.TravelMaker.dto.CommentsListDTO;
import com.icia.TravelMaker.dto.LikeListDTO;

@Service
public class BoardService {

	@Autowired
	private BoardDAO dao;
	
	public int boardInsert(BoardDTO dto){
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

	public int boardlikeInsert(BoardLikeDTO dto) {
 
		return dao.boardlikeinsert(dto);
	}

	public int likelist(BoardLikeDTO dto) {
		return dao.likelist(dto);
	}

	public int boardlikedelete(BoardLikeDTO dto) {
		return dao.boardlikedelete(dto); 
		
	}

	public String getmylike(BoardLikeDTO boardlike) {
		return dao.getmylike(boardlike);
		
	}

}
