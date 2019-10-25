package main.java.com.plzwindow.util;

public class StringUtil {
	//글내용보기  <textarea><pre><%=content%></pre></textarea>
	public static String parseBr(String msg){
		
		if(msg == null) return null;
		//String클래스의 replace메서드를 이용->웹시큐어코딩을 하기때문에
		return msg.replace("\r\n", "<br>") //문자열중에 enter있으면 <br>로 변경
                  .replace("\n", "<br>");
	}
}