<%@ page contentType="text/html;charset=UTF-8"%>
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
%>
	<script>
		alert("<%=mem_id %>님 환영합니다!");
	</script>
<%
   }else{ 
      response.sendRedirect("login.jsp"); %>
      <script>
		alert("아이디 또는 비밀번호가 잘못 입력되었습니다!");
	  </script>
   <%}%> 


