<%@ page contentType="text/html;charset=EUC-KR"%>
<jsp:useBean id="member" class="yoo.MemberDAO" />
<%
	String mem_id = request.getParameter("mem_id");
	String mem_password = request.getParameter("mem_passwd");
	boolean loginCheck = member.loginCheck(mem_id,mem_password); 
%>
<%
   if(loginCheck){
	  session.setAttribute("idKey",mem_id);
	  response.sendRedirect("index.html");
   }else{
      response.sendRedirect("login.jsp");
   }
%>
