package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import plzWindow.board.*;

public class DeleteProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		   String pageNum=request.getParameter("pageNum");//BoardDTO의 멤버변수가 아니기에
	      //추가
	      String passwd=request.getParameter("passwd");
	      int num=Integer.parseInt(request.getParameter("num"));
	      System.out.println("deletePro.do의 num=>"
	                                   +num+",passwd=>"+passwd+",pageNum=>"+pageNum);
	      
	      PlzWindowDAO dbPro=new PlzWindowDAO();
	      //select passwd from board where num=?
	      int check=dbPro.deleteArticle(num,passwd);//암호찾고->웹상의 암호체크
	      
	      //공유
	      request.setAttribute("pageNum",pageNum);
	      request.setAttribute("check",check);//삭제성공유무
	      
		return "/deletePro.jsp";
	}
}




