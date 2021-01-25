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
	
	@RequestMapping(value = "/boardDetail")
	public String boardDetail() {
		return "board/BoardDetail";
	}

	@RequestMapping(value = "/goBoardUpdateForm")
	public String goBoardUpdateForm() {
		return "board/BoardUpdateForm";
	}

	@RequestMapping(value = "/goPasswordCheck")
	public String goPasswordCheck() {
		return "member/PasswordCheck";
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

	@RequestMapping(value = "/goPasswordUpdateForm")
	public String goPasswordUpdateForm() {
		return "member/PasswordUpdateForm";
	}

	@RequestMapping(value = "/likeList")
	public String likeList() {
		return "member/LikeList";
	}

	@RequestMapping(value = "/goShoppingList")
	public String goShoppingList() {
		return "member/ShoppingList";
	}

	@RequestMapping(value = "/goMemberList")
	public String goMemberList() {
		return "admin/MemberList";
	}

	@RequestMapping(value = "/goBoardCategoryUpdateForm")
	public String goBoardCategoryUpdateForm() {
		return "admin/BoardCategoryUpdateForm";
	}

	@RequestMapping(value = "/goMemberUpdateForm")
	public String goMemberUpdateForm() {
		return "member/MemberUpdateForm";
	}

	@RequestMapping(value = "/goReviewList")
	public String goReviewList() {
		return "member/ReviewList";
	}

	@RequestMapping(value = "/goPreferenceList")
	public String goPreferenceList() {
		return "member/PreferenceList";
	}

	@RequestMapping(value = "/goCartList")
	public String goCartList() {
		return "member/CartList";
	}

	@RequestMapping(value = "/goSearchResult")
	public String goSearchResult() {
		return "member/SearchResult";
	}

	@RequestMapping(value = "/goCommentsList")
	public String goCommentsList() {
		return "member/CommentsList";
	}

	@RequestMapping(value = "/goPackageList")
	public String goPackageList() {
		return "sales/PackageList";
	}

	@RequestMapping(value = "/goBoardComplaint")
	public String goBoardComplaint() {
		return "board/BoardComplaintForm";
	}

	@RequestMapping(value = "/goCommentsComplaint")
	public String goCommentsComplaint() {
		return "board/CommentsComplaintForm";
	}

	@RequestMapping(value = "/goPointHistory")
	public String goPointHistory() {
		return "member/PointHistory";
	}

	@RequestMapping(value = "/goPackageDetail")
	public String goPackageDetail() {
		return "sales/PackageDetail";
	}

	@RequestMapping(value = "/goPackageUpdateForm")
	public String goPackageUpdateForm() {
		return "sales/PackageUpdateForm";
	}

	@RequestMapping(value = "/goPayApi")
	public String goPayApi() {
		return "sales/PayApi";
	}

	@RequestMapping(value = "/goRefundList")
	public String goRefundList() {
		return "admin/RefundList";
	}

	@RequestMapping(value = "/goTravelerList")
	public String goTravelerList() {
		return "admin/TravelerList";
	}

	@RequestMapping(value = "/goSalesManagement")
	public String goSalesManagement() {
		return "admin/SalesManagement";
	}

	@RequestMapping(value = "/goJoinTerms")
	public String goJoinTerms() {
		return "member/JoinTerms";
	}

	@RequestMapping(value = "/goAfterBoardList")
	public String goAfterBoardList() {
		return "board/AfterBoardList";
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
