package com.icia.TravelMaker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "Main";
	}

	@RequestMapping(value = "/goBoardUpdateForm")
	public String goBoardUpdateForm() {
		return "board/BoardUpdateForm";
	}

	@RequestMapping(value = "/goPreferenceForm")
	public String goPreferenceForm() {
		return "member/PreferenceForm";
	}

	@RequestMapping(value = "/idSearch")
	public String idSearch() {
		return "member/IdSearch";
	}

	@RequestMapping(value = "/passwordSearch")
	public String passwordSearch() {
		return "member/PasswordSearch";
	}

	@RequestMapping(value = "/goBoardCategoryUpdateForm")
	public String goBoardCategoryUpdateForm() {
		return "admin/BoardCategoryUpdateForm";
	}

	@RequestMapping(value = "/goSearchResult")
	public String goSearchResult() {
		return "member/SearchResult";
	}

	@RequestMapping(value = "/goBoardComplaint")
	public String goBoardComplaint() {
		return "board/BoardComplaintForm";
	}

	@RequestMapping(value = "/goCommentsComplaint")
	public String goCommentsComplaint() {
		return "board/CommentsComplaintForm";
	}

	@RequestMapping(value = "/goPackageDetail")
	public String goPackageDetail() {
		return "sales/PackageDetail";
	}

	@RequestMapping(value = "/goPayApi")
	public String goPayApi() {
		return "sales/PayApi";
	}

	@RequestMapping(value = "/goRefundList")
	public String goRefundList() {
		return "admin/RefundList";
	}

	@RequestMapping(value = "/goSalesManagement")
	public String goSalesManagement() {
		return "admin/SalesManagement";
	}

	@RequestMapping(value = "/goJoinTerms")
	public String goJoinTerms() {
		return "member/JoinTerms";
	}

	@RequestMapping(value = "/goPackageCategoryForm")
	public String goPackageCategoryForm() {
		return "sales/PackageCategoryForm";
	}

	@RequestMapping(value = "/goSaleForm")
	public String goSaleForm() {
		return "sales/SaleForm";
	}
	
}
