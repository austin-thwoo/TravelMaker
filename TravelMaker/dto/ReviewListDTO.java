package com.icia.TravelMaker.dto;

import lombok.Data;

@Data
public class ReviewListDTO {

	private int PNUMBER;
	private String PNAME;
	private String MID;
	private String MNICK;
	private int RVSCORE;
	private String RVCONTENT;
	private String RVDATE;
}
