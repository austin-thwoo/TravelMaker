package com.icia.TravelMaker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
}
