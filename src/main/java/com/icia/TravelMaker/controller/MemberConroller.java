package com.icia.TravelMaker.controller;

import java.io.InputStream;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	private ModelAndView memberLogout() {
		mav();
		session.invalidate();
		mav.setViewName("Main");
		return mav;
	}

	@RequestMapping(value = "/myPage")
	private ModelAndView myPage(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("myInfo", service.myPage(dto));
		mav.setViewName("member/MyPage");
		return mav;
	}

	@RequestMapping(value = "/idCheck")
	private @ResponseBody String idCheck(@ModelAttribute MemberDTO dto) {
		return service.idCheck(dto);
	}

	@RequestMapping(value = "/nickCheck")
	private @ResponseBody String nickCheck(@ModelAttribute MemberDTO dto) {
		return service.nickCheck(dto);
	}
	
	@RequestMapping(value = "/memberJoin")
	private ModelAndView signup(@ModelAttribute MemberDTO dto){
		mav();
		if(service.memberJoin(dto) == 1) {
			mav.setViewName("member/LoginForm");
		}else {
			mav.setViewName("member/JoinForm");
		}
		return mav;
	}

	@RequestMapping(value = "/goPreferenceList")
	private ModelAndView goPreferenceList(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("preferenceList", service.preferenceList(dto)); 
		mav.setViewName("member/PreferenceList");
		return mav;
	}

	@RequestMapping(value = "/goCartList")
	private ModelAndView goCartList(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("cartList", service.cartList(dto));
		mav.setViewName("member/CartList");
		return mav;
	}

	@RequestMapping(value = "/likeList")
	private ModelAndView likeList(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("likeList", service.listList(dto));
		mav.setViewName("member/LikeList");
		return mav;
	}

	@RequestMapping(value = "/goMyBoardList")
	private ModelAndView goMyBoardList(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("boardList", service.myBoardList(dto, 0));
		mav.addObject("state", 0);
		mav.setViewName("member/MyBoardList");
		return mav;
	}

	@RequestMapping(value = "/goPointHistory")
	private ModelAndView goPointHistory(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("pointHistory", service.pointHistory(dto));
		mav.setViewName("member/PointHistory");
		return mav;
	}
	
	@RequestMapping(value = "/goMyPostList")
	private ModelAndView goMyPostList(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("boardList", service.myBoardList(dto, 1));
		mav.addObject("state", 1);
		mav.setViewName("member/MyBoardList");
		return mav;
	}

	@RequestMapping(value = "/goShoppingList")
	private ModelAndView goShoppingList(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("shoppingList", service.shoppingList(dto)); 
		mav.setViewName("member/ShoppingList");
		return mav;
	}

	@RequestMapping(value = "/goPasswordUpdateForm")
	private ModelAndView goPasswordUpdateForm() {
		mav();
		mav.setViewName("member/PasswordUpdateForm");
		return mav;
	}
	
	@RequestMapping(value = "/passwordUpdate")
	private ModelAndView passwordUpdate(@ModelAttribute MemberDTO dto,
										@RequestParam("UPMPW") String MPW) {
		mav();
		if(service.passwordCheck(dto).equals("1")) {
			dto.setMPW(MPW);
			service.passwordUpdate(dto);
			session.invalidate();
			mav.setViewName("redirect:/goLoginForm");
		}else {
			mav.setViewName("redirect:/goPasswordUpdateForm");
		}
		return mav;
	}

	@RequestMapping(value = "/goPasswordCheckForm")
	private ModelAndView goPasswordCheckForm(@RequestParam("to") String to) {
		mav();
		mav.addObject("to", to);
		mav.setViewName("member/PasswordCheckForm");
		return mav;
	}
	
	@RequestMapping(value="/passwordCheck")
	private ModelAndView passwordCheck(@ModelAttribute MemberDTO dto,
										@RequestParam("to") String to) {
		mav();
		if(service.passwordCheck(dto).equals("1")) {
			mav.setViewName("redirect:/"+to+"?MID="+dto.getMID());
		}else {
			mav.setViewName("redirect:/goPasswordCheckForm");
		}
		return mav;
	}

	@RequestMapping(value = "/goMemberUpdateForm")
	private ModelAndView goMemberUpdateForm(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("memberInfo", service.memberInfo(dto));
		mav.setViewName("member/MemberUpdateForm");
		return mav;
	}
	
	@RequestMapping(value = "/memberUpdate")
	private ModelAndView memberUpdate(@ModelAttribute MemberDTO dto) {
		mav();
		service.memberUpdate(dto);
		mav.setViewName("redirect:/myPage?MID="+dto.getMID());
		return mav;
		
	}

	@RequestMapping(value = "/goMyCommentsList")
	private ModelAndView goMyCommentsList(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("commentsList", service.myCommentsList(dto));
		mav.setViewName("member/MyCommentsList");
		return mav;
	}

	@RequestMapping(value = "/goMyReviewList")
	private ModelAndView goMyReviewList(@ModelAttribute MemberDTO dto) {
		mav();
		mav.addObject("reviewList", service.myReviewList(dto));
		mav.setViewName("member/ReviewList");
		return mav;
	}

}
