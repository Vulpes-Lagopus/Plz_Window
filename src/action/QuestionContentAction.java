package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import plzWindow.board.*;

// /content.do요청
public class QuestionContentAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		//1.content.jsp가 처리해야할 내용을 대신 처리
	    //글상세보기=>상품의 정보를 자세히(SangDetail.jsp)
	   // list.jsp에서 링크->content.jsp?num=3&pageNum=1
	   int num=Integer.parseInt(request.getParameter("num"));
	   String pageNum=request.getParameter("pageNum");
	  
	   PlzWindowDAO  dbPro=new PlzWindowDAO();
	   PlzWindowDTO article=dbPro.getArticle(num);//select * frm board where num=?
	   //링크문자열의 길이를 줄이기 위해서
	   int ref=article.getRef();
	   int re_step=article.getRe_step();
	   int re_level=article.getRe_level();
	   System.out.println("questioncontent.do의 매개변수 확인");
	   System.out.println("ref=>"+ref+",re_step=>"+re_step+",re_level=>"+re_level);
	
		//2.처리결과를 메모리에 저장
	    request.setAttribute("num", num);
	    request.setAttribute("pageNum", pageNum);
	    request.setAttribute("article", article);
	    //ref,re_step,re_level 전달X ->article안에 포함이 되어있으니깐
	    
		return "/PlzWindowShop/Questioncontent.jsp";//뷰
	}

}




