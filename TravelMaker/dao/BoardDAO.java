package com.icia.TravelMaker.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.TravelMaker.dto.BoardCategoryDTO;
import com.icia.TravelMaker.dto.BoardDTO;
import com.icia.TravelMaker.dto.BoardDetailDTO;
import com.icia.TravelMaker.dto.BoardListDTO;
import com.icia.TravelMaker.dto.CommentsDTO;
import com.icia.TravelMaker.dto.CommentsListDTO;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public int boardInsert(BoardDTO dto) {
		return sql.insert("Board.boardInsert", dto);
	}

	public List<BoardListDTO> boardList(BoardCategoryDTO dto) {
		return sql.selectList("Board.boardList", dto);
	}

	public BoardCategoryDTO boardCategory(BoardCategoryDTO dto) {
		return sql.selectOne("Board.boardCategory", dto);
	}

	public BoardDetailDTO boardDetail(BoardDTO dto) {
		return sql.selectOne("Board.boardDetail", dto);
	}

	public List<CommentsListDTO> commentsList(BoardDTO dto) {
		return sql.selectList("Board.commentsList", dto);
	}

	public void commentsInsert(CommentsDTO dto) {
		sql.insert("Board.commentsInsert", dto);
	}

	public String boardCategoryCheck(BoardCategoryDTO dto) {
		return sql.selectOne("Board.boardCategoryCheck", dto);
	}

	public List<BoardCategoryDTO> boardCategoryList() {
		
		return sql.selectList("Board.boardCategoryList");
	}

	public int boardUdate(BoardDTO dto) {
		System.out.println("여기는 DAO boardUpdate메서드 : "+dto.toString());
		
		return sql.insert("Board.boardUpdate", dto);
	}

}
