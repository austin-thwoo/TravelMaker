package com.icia.TravelMaker.controller;

import java.io.IOException;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.TravelMaker.dto.BoardCategoryDTO;
import com.icia.TravelMaker.dto.BoardDTO;
import com.icia.TravelMaker.dto.BoardLikeDTO;
import com.icia.TravelMaker.dto.BoardListDTO;
import com.icia.TravelMaker.dto.CommentsDTO;
import com.icia.TravelMaker.dto.CommentsListDTO;
import com.icia.TravelMaker.dto.LikeListDTO;
import com.icia.TravelMaker.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	@Autowired
	private HttpSession session;
	
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
		mav.addObject("boardCategoryList", service.boardCategoryList());
		mav.setViewName("board/BoardInsertForm");
		return mav;
	}
	
	@RequestMapping(value = "/boardInsert")
	private ModelAndView boardInsert(@ModelAttribute BoardDTO dto){
		mav();
		if(service.boardInsert(dto) == 1) {
			mav.setViewName("redirect:/boardList");
		}else{
			mav.setViewName("redirect:/goBoardInsertForm");
		}
		return mav;
	}
	
	@RequestMapping(value = "/goBoardDetail")
	private ModelAndView goBoardDetail(@ModelAttribute BoardDTO dto, @RequestParam("MID") String MID) {
		mav();
		BoardLikeDTO boardlike = new BoardLikeDTO();
		boardlike.setBNUMBER(dto.getBNUMBER());
		boardlike.setMID(MID);
		
		
		mav.addObject("getmylike", service.getmylike(boardlike));
		mav.addObject("boardDetail", service.boardDetail(dto));
		mav.addObject("commentsList", service.commentsList(dto));
					
		mav.setViewName("board/BoardDetail");
		return mav;
	}
	
	@RequestMapping(value="commentsInsert")
	private @ResponseBody List<CommentsListDTO> commentsInsert(@ModelAttribute CommentsDTO dto){
		service.commentsInsert(dto);
		BoardDTO bdto = new BoardDTO();
		bdto.setBNUMBER(dto.getBNUMBER());
		return service.commentsList(bdto);
	}

	@RequestMapping(value = "/goBoardUpdateForm")
	private ModelAndView goBoardUpdateForm(@ModelAttribute BoardDTO dto) {
		mav();
		mav.addObject("boardDetail", service.boardDetail(dto));
		mav.addObject("boardCategoryList", service.boardCategoryList());
		mav.setViewName("board/BoardUpdateForm");
		return mav;
	}
	
	@RequestMapping(value = "/boardUpdate")
	private ModelAndView boardUpdate(@ModelAttribute BoardDTO dto){
		mav();
		if(service.boardUpdate(dto) == 1) {
			mav.setViewName("redirect:/boardList");
		}else{
			mav.setViewName("redirect:/goBoardUpdateForm?BNUMBER="+dto.getBNUMBER());
		}
		return mav;
	}

	@RequestMapping(value = "/boardlikeInsert")
	private @ResponseBody int likeInsert(@ModelAttribute BoardLikeDTO dto) {
		mav();
		service.boardlikeInsert(dto);
		System.out.println("새로운 시작");
		 return service.likelist(dto);
	}
	@RequestMapping(value = "/boardlikeDelete")
	private @ResponseBody int boardlikeDelete(@ModelAttribute BoardLikeDTO dto) {
		mav();
		service.boardlikedelete(dto);
		
		 return service.likelist(dto);
	}
	@RequestMapping(value = "/boardlock")
	private @ResponseBody int boardlock(@ModelAttribute BoardListDTO boardlist) {
				
	 return service.boardlock(boardlist);
		/*
		 * if (i==1) { BoardCategoryDTO dto= new BoardCategoryDTO(); return
		 * service.boardList(dto); }else { return null; }
		 */
	
	
	}
	
}
