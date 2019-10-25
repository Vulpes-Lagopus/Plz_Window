package main.java.com.plzwindow.util;

import java.io.File;//파일업로드시 업로드할 경로지정 및 파일의 새이름을 부여

public class FileUtil {

	//업로드및 다운로드 경로=>이클립스에서 업로드할때 기본 디렉토리가 복잡=>우리가 원하는 절대경로사용
	public static final String UPLOAD_PATH="C:/webtest/8.spring/sou/SpringFileBoard/src/main/webapp/upload";
	
	//1.탐색기의 원본파일명만 받아서 처리메서드 작성
	public static String rename(String filename) throws Exception {
		if(filename==null) return null;//업로드 X ->이름 변경X
		//새이름 규칙=>시스템날짜+랜덤숫자(0~49)=>조합해서 작성
		String newName=Long.toString(System.currentTimeMillis())+(int)(Math.random()*50);
		System.out.println("newName=>"+newName);
		return rename(filename,newName);
	}
	//2.실제로 새로운 파일명을 변경하는 역할->확장자를 구분=>변경된 이름만 구해서 변경
	//ex)testkimaaa.txt=>1)확장자를 구함
	public static String rename(String filename,String newName) throws Exception {
		if(filename==null) return null;
		//1.기존의 파일에서 확장자구하기
		int idx=filename.lastIndexOf(".");//못찾으면 -1을 리턴
		String extention="";//확장자
		String newFileName="";//최종조합할 새파일명 저장
		if(idx!=-1) {//찾았다면
			extention=filename.substring(idx);//testkimaaa.txt
			System.out.println("extention=>"+extention);//확장자만 출력
		}
		//새파일명->파일명만 분리
		int newIdx=newName.lastIndexOf(".");
		if(newIdx!=-1) {
			newName=newName.substring(0,newIdx);//0은 포함->newIdx의 바로앞 글짜까지
			System.out.println("newName(변경된 파일명)=>"+newName);
		}
		newFileName=newName+extention.toLowerCase();//확장자(대문자)->소문자로 변경
		return newFileName;//실질적으로 업로드된 파일명
	}
	//3.글수정->업로드된 파일도 수정->기존 업로드된 파일 삭제->새로 업로드 O or X
	//파일 삭제
	public static void removeFile(String filename) {
		File file=new File(UPLOAD_PATH,filename);//1.파일의 위치 2.파일명
		//기존에 존재하는 파일이 있으면 삭제하라
		if(file.exists()) file.delete();
	}
}








