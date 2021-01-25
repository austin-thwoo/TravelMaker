package com.icia.TravelMaker.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class PackageDTO {

	private int PNUMBER;
	private String PNAME;
	private String PIMG;
	private MultipartFile PIMGFILE;
	private int PADULT;
	private int PCHILD;
	private int PINFANT;
	private int PPERIOD;
	private int PMIN;
	private int PMAX;
	private String PUPLOADDATE;
	private String PINFO;
}
