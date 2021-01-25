package com.icia.TravelMaker.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.icia.TravelMaker.dto.BoardDTO;
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
	public ModelAndView boardList() {
		mav();
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
	public ModelAndView boardInsert(@ModelAttribute BoardDTO dto) throws IllegalStateException, IOException {
		mav();
		if(service.boardInsert(dto) == 1) {
			mav.setViewName("redirect:/boardList");
		}else{
			mav.setViewName("redirect:/goBoardInsertForm");
		}
		return mav;
	}

}
