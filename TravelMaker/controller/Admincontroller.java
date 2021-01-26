package com.icia.TravelMaker.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.TravelMaker.dto.AdminJobListDTO;
import com.icia.TravelMaker.dto.BoardCategoryDTO;
import com.icia.TravelMaker.dto.CategoryDTO;
import com.icia.TravelMaker.dto.MemberDTO;
import com.icia.TravelMaker.dto.PackageDTO;
import com.icia.TravelMaker.service.AdminService;

@Controller
public class Admincontroller {
	
	@Autowired
	private AdminService service;
	private ModelAndView mav;
	
	private void mav() {
		if(mav == null) {
			mav = new ModelAndView();
		}
	}

	@RequestMapping(value = "/adminPage")
	private ModelAndView adminPage(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("jobList", service.jobList(dto));
		mav.setViewName("admin/AdminPage");
		return mav;
	}
	
	@RequestMapping(value = "/jobListInsert")
	private ModelAndView jobListInsert(@ModelAttribute AdminJobListDTO dto){
		mav();
		service.jobListInsert(dto);
		mav.setViewName("redirect:/jobList?MID=" + dto.getMID());
		return mav;
	}
	
	@RequestMapping(value = "/jobList")
	private @ResponseBody List<AdminJobListDTO> jobList(@ModelAttribute MemberDTO dto){
		return service.jobList(dto);
	}
	
	@RequestMapping(value = "/goAdminJoinForm")
	private ModelAndView goAdminJoinForm() {
		mav();
		mav.setViewName("admin/AdminJoinForm");
		return mav;
	}

	@RequestMapping(value = "/goPackageInsertForm")
	private ModelAndView goPackageInsertForm() {
		mav();
		mav.setViewName("sales/PackageInsertForm");
		return mav;
	}
	
	@RequestMapping(value = "/packageInsert")
	private ModelAndView packageInsert(@ModelAttribute PackageDTO dto) throws IllegalStateException, IOException {
		mav();
		service.packageInsert(dto);
		mav.setViewName("sales/PackageInsertForm");
		return mav;
	}

	@RequestMapping(value = "/goBoardCategoryList")
	private ModelAndView goBoardCategoryList() {
		mav();
		mav.addObject("boardCategoryList", service.boardCategoryList());
		mav.setViewName("admin/BoardCategoryList");
		return mav;
	}
	
	@RequestMapping(value = "/boardCategoryInsert")
	private ModelAndView boardCategoryInsert(@ModelAttribute BoardCategoryDTO dto) {
		service.boardCategoryInsert(dto);
		mav.setViewName("redirect:/boardCategoryList");
		return mav;
	}
	
	@RequestMapping(value = "/boardCategoryList")
	private @ResponseBody List<BoardCategoryDTO> boardCategoryList() {
		return service.boardCategoryList();
	}

	@RequestMapping(value = "/goCategoryList")
	private ModelAndView goCategoryList() {
		mav();
		mav.addObject("categoryList", service.categoryList());
		mav.setViewName("admin/CategoryList");
		return mav;
	}
	
	@RequestMapping(value="categoryInsert")
	private ModelAndView categoryInsert(@ModelAttribute CategoryDTO dto){
		mav();
		service.categoryInsert(dto);
		mav.setViewName("redirect:/CategoryList");
		return mav;
	}

	@RequestMapping(value = "/CategoryList")
	private @ResponseBody List<CategoryDTO> CategoryList() {
		return service.categoryList();
	}
	
	@RequestMapping(value = "/goComplaintBoardList")
	private ModelAndView goComplaintBoardList() {
		mav();
		mav.addObject("boardList", service.complaintBoardList());
		mav.setViewName("admin/ComplaintBoardList");
		return mav;
	}

	@RequestMapping(value = "/goTravelerList")
	private ModelAndView goTravelerList() {
		mav();
		mav.addObject("travelerList", service.travelerList());
		mav.setViewName("admin/TravelerList");
		return mav;
	}
	
	@RequestMapping(value = "/goComplaintCommentsList")
	private ModelAndView goComplaintCommentsList() {
		mav();
		mav.addObject("commentsList", service.complaintCommentsList());
		mav.setViewName("admin/ComplaintCommentsList");
		return mav;
	}
}
