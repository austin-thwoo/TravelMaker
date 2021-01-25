package com.icia.TravelMaker.controller;

import java.io.Writer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.TravelMaker.dto.MemberDTO;
import com.icia.TravelMaker.service.MemberService;

@Controller
public class MemberConroller {
	
	@Autowired
	private MemberService service;
	@Autowired
	private HttpSession session;
	private ModelAndView mav;
	
	private void mav() {
		if(mav == null) {
			mav = new ModelAndView();
		}
	}

	@RequestMapping(value = "/goLoginForm")
	private ModelAndView goLoginForm() {
		mav();
		mav.setViewName("member/LoginForm");
		return mav;
	}

	@RequestMapping(value="/login")
	private ModelAndView login(@ModelAttribute MemberDTO dto) {
		mav();
		MemberDTO result = service.login(dto);
		if(result != null) {
			session.setAttribute("loginInfo", result);
			mav.setViewName("Main");
		}else {
			mav.setViewName("redirect:/goLoginForm");
		}
		return mav;
	}

	@RequestMapping(value = "/goJoinForm")
	private ModelAndView goJoinForm() {
		mav();
		mav.setViewName("member/JoinForm");
		return mav;
	}
	
	@RequestMapping(value="/logout")
	public ModelAndView memberLogout() {
		mav();
		session.invalidate();
		mav.setViewName("Main");
		return mav;
	}

	@RequestMapping(value = "/myPage")
	public ModelAndView myPage(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("myInfo", service.myPage(dto));
		mav.setViewName("member/MyPage");
		return mav;
	}

	@RequestMapping(value = "/idCheck")
	public @ResponseBody String idCheck(@ModelAttribute MemberDTO dto) {
		return service.idCheck(dto);
	}

	@RequestMapping(value = "/nickCheck")
	public @ResponseBody String nickCheck(@ModelAttribute MemberDTO dto) {
		return service.nickCheck(dto);
	}
	
	@RequestMapping(value = "/memberJoin")
	public ModelAndView signup(@ModelAttribute MemberDTO dto){
		mav();
		if(service.memberJoin(dto) == 1) {
			mav.setViewName("member/LoginForm");
		}else {
			mav.setViewName("member/JoinForm");
		}
		return mav;
	}

}
