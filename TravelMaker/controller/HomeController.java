package com.icia.TravelMaker.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.icia.TravelMaker.dto.CKEditorDTO;


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

	@RequestMapping(value = "/goPreferenceForm")
	public String goPreferenceForm() {
		return "member/PreferenceForm";
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
	
	/**
	 * 이미지 업로드
	 * @param request
	 * @param response
	 * @param upload
	 */
	@RequestMapping(value = "/fileUpload")
	private String fileUpload(HttpServletRequest req, CKEditorDTO dto, Model model) {
		MultipartFile upload = dto.getUpload();
		String oriFileName = upload.getOriginalFilename();
		String fileName = "";
		String CKEditorFuncNum = "";
		String root_path = "D:/ICIA/Jong Won/Team_404/TravelMaker_Proj/TravelMaker/src/main/webapp/resources/upload/";//저장경로
		String file_path = "resources/upload/";//url경로
		
		if(upload != null) {
			fileName = UUID.randomUUID().toString() + oriFileName.substring(oriFileName.lastIndexOf("."));
			dto.setFilename(fileName);
			CKEditorFuncNum = dto.getCKEditorFuncNum();
			try {
				File file = new File(root_path + fileName);
				upload.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		model.addAttribute("file_path", file_path + fileName);
		model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
	 
	    return "FileUpload";
	}

}
