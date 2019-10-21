package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import plzWindow.board.*;

import java.sql.Timestamp;//추가할 부분(시간)

public class UpdateProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		//값을 입력을 받아서 BoardDTO에 저장->테이블에 저장하는 구문
	     //한글처리
	     request.setCharacterEncoding("utf-8");
	     //추가
	     String pageNum=request.getParameter("pageNum");
	     
	     PlzWindowDTO article=new PlzWindowDTO();//데이터 담을 객체
	   
	     article.setNum(Integer.parseInt(request.getParameter("num")));
	     article.setWriter(request.getParameter("writer"));
	     article.setEmail(request.getParameter("email"));
	     article.setSubject(request.getParameter("subject"));
	     article.setContent(request.getParameter("content"));
	     article.setPasswd(request.getParameter("passwd"));
	     	      
	      PlzWindowDAO dbPro=new PlzWindowDAO();
	      int check=dbPro.updateArticle(article);
	      
	      //2개의 공유값이 필요
	      request.setAttribute("pageNum", pageNum);//수정할 페이지로 이동
	      request.setAttribute("check", check);//데이터 수정성공유무
	      
		return "/updatePro.jsp";
	}
}




