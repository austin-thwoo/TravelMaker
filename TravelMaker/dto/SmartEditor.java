package com.icia.TravelMaker.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class SmartEditor {
	
	private MultipartFile fileData;
	private String callback;
	private String callback_func;

}
