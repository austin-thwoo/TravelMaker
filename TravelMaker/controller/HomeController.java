package com.icia.TravelMaker.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.icia.TravelMaker.dto.SmartEditor;

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

	@RequestMapping(value = "/idSearch")
	public String idSearch() {
		return "member/IdSearch";
	}

	@RequestMapping(value = "/passwordSearch")
	public String passwordSearch() {
		return "member/PasswordSearch";
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
	
	@RequestMapping("/fileUploader")
	public String fileUploader(HttpServletRequest request, SmartEditor editor) throws UnsupportedEncodingException{
		String callback = editor.getCallback();
		String callback_func = editor.getCallback_func();
		String file_result = "";
		String result = "";
		MultipartFile multiFile = editor.getFileData();
		try {
			if(multiFile != null && multiFile.getSize() > 0 && StringUtils.isNotBlank(multiFile.getName())) {
				if(multiFile.getContentType().toLowerCase().startsWith("image/")) {
					String oriName = multiFile.getName();
					/* String uploadPath = request.getServletContext().getRealPath("/img"); */
					String path = "D:/ICIA/Jong Won/Team_404/TravelMaker_Proj/TravelMaker/src/main/webapp/resources/imgFile/";
					File file = new File(path);
					if(!file.exists()) {
						file.mkdirs();
					}
					String fileName = UUID.randomUUID().toString();
					editor.getFileData().transferTo(new File(path + fileName));
					file_result += "&bNewLine=true&sFileName=" + oriName + "&sFileURL=resources/imgFile/" + fileName;
				}else {
					file_result += "&errstr=error";
				}
			}else {
				file_result += "&errstr=error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		result = "redirect:" + callback + "?callback_func=" + URLEncoder.encode(callback_func, "UTF-8") + file_result;
		return result;
	}
	
}
