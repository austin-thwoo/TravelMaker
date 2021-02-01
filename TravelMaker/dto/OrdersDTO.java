package com.icia.TravelMaker.dto;

import lombok.Data;

@Data
public class OrdersDTO {

	private String MID;
	private int PNUMBER;
	private String ODATE;
	private int OADULT;
	private int OCHILD;
	private int OINFANT;
	private int OAMOUNT;
	private int OSTATE;
	private int PSPNUMBER;
	private String PSSTART;
}
