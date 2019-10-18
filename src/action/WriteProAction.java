package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import plzWindow.board.*;

import java.sql.Timestamp;//추가할 부분(시간)

public class WriteProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		//값을 입력을 받아서 BoardDTO에 저장->테이블에 저장하는 구문
		
	     //한글처리
	     request.setCharacterEncoding("utf-8");
	     PlzWindowDTO article=new PlzWindowDTO();
	   
	     article.setNum(Integer.parseInt(request.getParameter("num")));
	     article.setSubject(request.getParameter("subject"));
	     
	     article.setReg_date(new Timestamp(System.currentTimeMillis()));//작성날짜
	     article.setRef(Integer.parseInt(request.getParameter("ref")));
	     article.setRe_step(Integer.parseInt(request.getParameter("re_step")));
	     article.setRe_level(Integer.parseInt(request.getParameter("re_level")));
	     
	     article.setContent(request.getParameter("content"));
	      
	      PlzWindowDAO dbPro=new PlzWindowDAO();
	      dbPro.insertArticle(article);
	      //response.sendRedirect("http://localhost:8090/JspBoard2/list.do");
		return "/PlzWindowShop/writePro.jsp";
	}

}




