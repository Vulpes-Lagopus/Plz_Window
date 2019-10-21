package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import plzWindow.board.*;

import java.util.*;//List

public class QuestionAction implements CommandAction {

	 // /list.do로 요청이 들어왔을때 처리해주는 구문
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String pageNum=request.getParameter("pageNum");
		//추가(검색분야,검색어)
		String search=request.getParameter("search");//검색분야
		String searchtext=request.getParameter("searchtext");
		System.out.println("ListAction의 매개변수 확인");
		System.out.println("pageNum="+pageNum+",search="+search+",searchtext="+searchtext);
		
		int count=0;//총레코드수
		List articleList=null;//화면에 출력할 레코드를 저장할 변수
		
		PlzWindowDAO dbPro=new PlzWindowDAO();
		count=dbPro.getArticleSearchCount(search, searchtext);//sql구문에 따라라서 결과 달라짐
		System.out.println("현재 검색된 레코드수(count)=>"+count);
		
		Hashtable<String,Integer> pgList=dbPro.pageList(pageNum, count);
		
	    if(count > 0){
	    	System.out.println(pgList.get("startRow")+","+pgList.get("endRow"));
	    	articleList=dbPro.getBoardArticles(pgList.get("startRow"), 
	    			                                          pgList.get("pageSize"),
	    			                                          search,searchtext);//첫번째 레코드번호,불러올 갯수
	    }else { //count=0
	    	articleList=Collections.EMPTY_LIST;//아무것도 없는 빈 list객체 반환
	    }
	    
		//2.처리한 결과를 공유(서버메모리에 저장)->이동할 페이지에 공유해서 사용(request객체)
	    //request.getAttribue("currentPage"(키명))=>${currentPage(키명)}
	    request.setAttribute("search", search);//검색분야
	    request.setAttribute("searchtext", searchtext);//검색어
	    request.setAttribute("pgList", pgList);//페이징처리 10개 정보
	    request.setAttribute("articleList", articleList);//${articleList}
	    
		//3.공유해서 이동할 수 있도록 페이지를 지정
		return "/PlzWindowShop/Question.jsp"; // /board/list.jsp=>경로를 변경해서 지정할 수있다.
	}
}



