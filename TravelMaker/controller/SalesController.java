package com.icia.TravelMaker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.TravelMaker.dto.CartListDTO;
import com.icia.TravelMaker.dto.LikeListDTO;
import com.icia.TravelMaker.dto.MemberDTO;
import com.icia.TravelMaker.dto.OrdersDTO;
import com.icia.TravelMaker.dto.PackageDTO;
import com.icia.TravelMaker.dto.PackageScheduleDTO;
import com.icia.TravelMaker.dto.ReviewDTO;
import com.icia.TravelMaker.dto.ReviewListDTO;
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
	
	@RequestMapping(value = "/goSaleForm")
	private ModelAndView goSaleForm(@ModelAttribute OrdersDTO dto) {
		mav();
		mav.addObject("ordersInfo", dto);
		PackageDTO pdto = new PackageDTO();
		pdto.setPNUMBER(dto.getPNUMBER());
		mav.addObject("packageDetail", service.packageDetail(pdto));
		for(PackageScheduleDTO i : service.packageSchedule(pdto)) {
			if(i.getPNUMBER() == dto.getPNUMBER() && i.getPSSTART().equals(dto.getPSSTART())) {
				mav.addObject("packageSchedule", i);
			}
		}
		MemberDTO mdto = new MemberDTO();
		mdto.setMID(dto.getMID());
		mav.addObject("pointInfo", service.pointInfo(mdto));
		mav.setViewName("sales/SaleForm");
		return mav;
	}
	
	@RequestMapping(value="reviewInsert")
	private @ResponseBody List<ReviewListDTO> reviewInsert(@ModelAttribute ReviewDTO dto){
		service.reviewInsert(dto);
		PackageDTO pdto = new PackageDTO();
		pdto.setPNUMBER(dto.getPNUMBER());
		return service.reviewList(pdto);
	}
	
	@RequestMapping(value = "/likeInsert")
	private @ResponseBody int likeInsert(@ModelAttribute LikeListDTO dto) {
		mav();
		return service.likeInsert(dto);
	}
	
	@RequestMapping(value = "/likeDelete")
	private @ResponseBody int likeDelete(@ModelAttribute LikeListDTO dto) {
		mav();
		return service.likeDelete(dto);
	}
	
	@RequestMapping(value = "/cartInsert")
	private @ResponseBody int cartInsert(@ModelAttribute CartListDTO dto) {
		mav();
		return service.cartInsert(dto);
	}
	
	@RequestMapping(value = "/cartDelete")
	private @ResponseBody int cartDelete(@ModelAttribute CartListDTO dto) {
		mav();
		return service.cartDelete(dto);
	}

	@RequestMapping(value = "/goPayApi")
	public ModelAndView goPayApi(@ModelAttribute OrdersDTO dto, @RequestParam(value = "POAMOUNT", required = false, defaultValue = "0") int POAMOUNT) {
		mav();
		mav.addObject("POAMOUNT", POAMOUNT);
		mav.addObject("orders", dto);
		mav.setViewName("sales/PayApi");
		return mav;
	}
	
	@RequestMapping(value="insertOrders")
	private ModelAndView insertOrders(@ModelAttribute OrdersDTO dto, @RequestParam(value = "POAMOUNT", required = false, defaultValue = "0") int POAMOUNT){
		mav();
		if(POAMOUNT == 0) {
			service.insertOrders(dto);
		}else {
			
		}
		return mav;
	}
}
