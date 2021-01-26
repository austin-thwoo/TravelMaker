package com.icia.TravelMaker.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.TravelMaker.dto.BoardCategoryDTO;
import com.icia.TravelMaker.dto.BoardDTO;
import com.icia.TravelMaker.dto.BoardListDTO;

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

}
