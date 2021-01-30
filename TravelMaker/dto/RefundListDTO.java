package com.icia.TravelMaker.dto;

import lombok.Data;

@Data
public class RefundListDTO {
	private String	MID;//사용자-주문자
	private int PNUMBER;//상품번호
	private String ODATE;//주문일자
	private int OADULT;//성인인원수
	private int OCHILD;//아동
	private int OINFANT;//유아
	private int OAMOUNT;//총합
	private String PSSTART;//출발일자
	private int OSTATE;//상태
	
}
