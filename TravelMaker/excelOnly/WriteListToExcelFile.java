package com.icia.TravelMaker.excelOnly;


import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.List;
 
 
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.icia.TravelMaker.dto.TravelerListDTO;



public class WriteListToExcelFile {

	 public static void writeNoticeListToFile(String fileName, List<TravelerListDTO> noticeList) throws Exception{
	        Workbook workbook = null;
	         
	        if(fileName.endsWith("xlsx")){
	            workbook = new XSSFWorkbook();
	            //이게 버전따라 달라서 그냥 둘다 넣어놈 구버전XSSF
	        }else if(fileName.endsWith("xls")){
	            workbook = new HSSFWorkbook();
	            //이게 버전따라 달라서 그냥 둘다 넣어놈 신버전 HSSF
	        }else{
	            throw new Exception("invalid file name, should be xls or xlsx");
	        }
	         
	        Sheet sheet = workbook.createSheet("현뚜의 패키지 리스뚜>ㅂ<");
	         
	        Iterator<TravelerListDTO> iterator = noticeList.iterator();
	         
	        
	        
	        
	        
	        
	        
	        
	        int rowIndex = 0;
	        int count=0; // 처음에는 고정값을 넣기 위해 사용한 변수
	        do{
	        	
	        	
	            Row row = sheet.createRow(rowIndex++);
	           
	            
	            //System.out.println(excelname + "번째 값 : " + notice.toString());
	            
	            if(count==0){ // 처음에 고정값  , // 한바퀴 도는데 방금 0번째 iterator 안뽑으니까
	            	// 
	                 
	            	Cell cell0 = row.createCell(0);
	                 cell0.setCellValue("패키지넘버");
	                 Cell cell1 = row.createCell(1);
	                 cell1.setCellValue("상품명");
	                 Cell cell2 = row.createCell(2);
	                 cell2.setCellValue("여행시작일");
	                 Cell cell3 = row.createCell(3);
	                 cell3.setCellValue("여행종료일");
	                 Cell cell4 = row.createCell(4);
	                 cell4.setCellValue("한글이름");
	                 Cell cell5 = row.createCell(5);
	                 cell5.setCellValue("영문이름");
	                 Cell cell6 = row.createCell(6);
	                 cell6.setCellValue("생년월일");
	                 Cell cell7 = row.createCell(7);
	                 cell7.setCellValue("이메일");
	                 Cell cell8 = row.createCell(8);
	                 cell8.setCellValue("연락처");
	                 
	                 
	                 
	                 
	                 count++;
	                 
	            }else if(count>=1){  // 다음부터는 순차적으로 값이 들어감 
	            	TravelerListDTO notice = iterator.next(); // 여기서 iterator 뽑음
	            	System.out.println(count + "번째  iterator 값 사용 :  " + iterator.toString());
	            	
	                 Cell cell0 = row.createCell(0);
	                 cell0.setCellValue(notice.getOPNUMBER());
	                 Cell cell1 = row.createCell(1);
	                 cell1.setCellValue(notice.getPNAME());
	                 Cell cell2 = row.createCell(2);
	                 cell2.setCellValue(notice.getPSSTART());
	                 Cell cell3 = row.createCell(3);
	                 cell3.setCellValue(notice.getPSEND());
	                 Cell cell4 = row.createCell(4);
	                 cell4.setCellValue(notice.getTNAME());
	                 Cell cell5= row.createCell(5);
	                 cell5.setCellValue(notice.getTENNAME());
	                 Cell cell6 = row.createCell(6);
	                 cell6.setCellValue(notice.getTBIRTH());
	                 Cell cell7 = row.createCell(7);
	                 cell7.setCellValue(notice.getTEMAIL());
	                 Cell cell8 = row.createCell(8);
	                 cell8.setCellValue(notice.getTPHONE());
	                
	                
	            }
	            
	            
	        }while(iterator.hasNext()); // iterator hasNext --> iterator 값이 있을때 true
	     
	         
	        //lets write the excel data to file now
	        FileOutputStream fos = new FileOutputStream(fileName);
	        workbook.write(fos);
	        fos.close();
	        
	        System.out.println(fileName + " toExcel successfully!");
	    }
	
	
}
