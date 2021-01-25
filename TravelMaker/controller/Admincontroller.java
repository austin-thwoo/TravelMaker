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
	public ModelAndView adminPage(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("jobList", service.jobList(dto));
		mav.setViewName("admin/AdminPage");
		return mav;
	}
	
	@RequestMapping(value = "/goAdminJoinForm")
	public ModelAndView goAdminJoinForm() {
		mav();
		mav.setViewName("admin/AdminJoinForm");
		return mav;
	}

	@RequestMapping(value = "/goPackageInsertForm")
	public ModelAndView goPackageInsertForm() {
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
	public ModelAndView goCategoryList() {
		mav();
		mav.addObject("categoryList", service.categoryList());
		mav.setViewName("admin/CategoryList");
		return mav;
	}
	
	@RequestMapping(value="categoryInsert")
	public ModelAndView categoryInsert(@ModelAttribute CategoryDTO dto){
		mav();
		service.categoryInsert(dto);
		mav.setViewName("redirect:/CategoryList");
		return mav;
	}

	@RequestMapping(value = "/CategoryList")
	public @ResponseBody List<CategoryDTO> CategoryList() {
		return service.categoryList();
	}
}
