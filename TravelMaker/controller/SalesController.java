package com.icia.TravelMaker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.TravelMaker.dto.PackageDTO;
import com.icia.TravelMaker.dto.RefundListDTO;
import com.icia.TravelMaker.service.SalesService;

@Controller
public class SalesController {

	@Autowired
	private SalesService service;
	private ModelAndView mav;
	
	private void mav() {
		if(mav == null) {
			mav = new ModelAndView();
		}
	}

	@RequestMapping(value = "/goPackageList")
	private ModelAndView goPackageList(@RequestParam("to") String to) {
		mav();
		mav.addObject("packageList", service.packageList());
		switch (to) {
		case "sales":
			mav.setViewName("sales/PackageList");
			break;
		case "admin":
			mav.setViewName("admin/PackageList");
			break;
		default:
			break;
		}
		return mav;
	}

	@RequestMapping(value = "/goPackageDetail")
	private ModelAndView goPackageDetail(@ModelAttribute PackageDTO dto) {
		mav();
		mav.addObject("packageDetail", service.packageDetail(dto));
		mav.addObject("packageSchedule", service.packageSchedule(dto));
		mav.addObject("reviewList", service.reviewList(dto));
		mav.setViewName("sales/PackageDetail");
		return mav;
	}
	@RequestMapping(value = "/goRefundList")
	public ModelAndView goRefundList() {
		mav();
		mav.addObject("refundlist", service.refundlist());
		mav.setViewName("sales/RefundList");
		return mav;
	}
	
	@RequestMapping(value = "/goRefundListAjax")
	public @ResponseBody RefundListDTO goRefundListAjax(@ModelAttribute RefundListDTO refunddto) {
		System.out.println("여기는 컨트롤러");
		RefundListDTO redto=service.refundlistAjax(refunddto);
		System.out.println("여기는 컨트롤러2222");
		return redto;
	}
}
