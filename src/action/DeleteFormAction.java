package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// /deleteForm.do
public class DeleteFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		 //conent.jsp->삭제버튼->deleteForm.do?num=2&pageNum=1->deletePro.jsp(deleteArticle)
	     int num=Integer.parseInt(request.getParameter("num"));//메서드의 매개변수때문에
	     String pageNum=request.getParameter("pageNum");//삭제된 게시물이 있는 페이지로 이동
	     System.out.println("deleteForm.do의 num=>"+num+",pageNum=>"+pageNum);
	     
	     request.setAttribute("num", num);//삭제할 게시물번호
	     request.setAttribute("pageNum",pageNum);
	     
		return "/deleteForm.jsp";
	}
}



