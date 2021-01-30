package com.icia.TravelMaker.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.TravelMaker.dto.BoardCategoryDTO;
import com.icia.TravelMaker.dto.BoardDTO;
import com.icia.TravelMaker.dto.CommentsDTO;
import com.icia.TravelMaker.dto.CommentsListDTO;
import com.icia.TravelMaker.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private BoardService service;
	private ModelAndView mav;

	private void mav() {
		if(mav == null) {
			mav = new ModelAndView();
		}
	}

	@RequestMapping(value = "/boardList")
	private ModelAndView boardList(@ModelAttribute BoardCategoryDTO dto) {
		mav();
		mav.addObject("boardList", service.boardList(dto));
		mav.addObject("boardCategory", service.boardCategory(dto));
		mav.setViewName("board/BoardList");
		return mav;
	}

	@RequestMapping(value = "/goBoardInsertForm")
	private ModelAndView goBoardInsertForm() {
		mav();
		mav.setViewName("board/BoardInsertForm");
		return mav;
	}

	@RequestMapping(value = "/boardInsert")
	private ModelAndView boardInsert(@ModelAttribute BoardDTO dto) throws IllegalStateException, IOException {
		mav();
		if(service.boardInsert(dto) == 1) {
			mav.setViewName("redirect:/boardList");
		}else{
			mav.setViewName("redirect:/goBoardInsertForm");
		}
		return mav;
	}

	@RequestMapping(value = "/goBoardDetail")
	private ModelAndView goBoardDetail(@ModelAttribute BoardDTO dto) {
		mav();
		mav.addObject("boardDetail", service.boardDetail(dto));
		mav.addObject("commentsList", service.commentsList(dto));
		mav.setViewName("board/BoardDetail");
		return mav;
	}

	@RequestMapping(value="commentsInsert")
	public @ResponseBody List<CommentsListDTO> commentsInsert(@ModelAttribute CommentsDTO dto){
		service.commentsInsert(dto);
		BoardDTO bdto = new BoardDTO();
		bdto.setBNUMBER(dto.getBNUMBER());
		return service.commentsList(bdto);
	}
	@RequestMapping(value = "/goBoardUpdateForm")
	private ModelAndView goBoardUpdateForm(@ModelAttribute BoardDTO dto) {
		mav();
		mav.addObject("boardDetail", service.boardDetail(dto));
		List<BoardCategoryDTO> list=service.boardCategoryList();
		System.out.println("아빠사자");
		System.out.println(list.get(0));
		mav.addObject("boardCategoryList", service.boardCategoryList());
		
		mav.setViewName("board/BoardUpdateForm");
		return mav;

	}
	@RequestMapping(value = "/boardUpdate")
	private ModelAndView boardUpdate(@ModelAttribute BoardDTO dto) throws IllegalStateException, IOException {
		mav();
		System.out.println("여기는 컨트롤러입니다.");
		if(service.boardUpdate(dto) == 1) {
			mav.setViewName("redirect:/boardList");
		}else{
			mav.setViewName("redirect:/goBoardUpdateForm");
		}
		return mav;
	}
}
