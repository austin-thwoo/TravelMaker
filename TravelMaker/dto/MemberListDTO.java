package com.icia.TravelMaker.dto;

import lombok.Data;

@Data
public class MemberListDTO {
	private String MID;
    private String MNICK;
    private String MNAME;
    private String MPHONE;
    private String MGENDER;
    private int MSTATE;
    private String MDATE;
    private int BOARDCOMPLAINT;
    private int COMMENTSCOMPLAINT;
    private int ACCOUNTBAN;
}
