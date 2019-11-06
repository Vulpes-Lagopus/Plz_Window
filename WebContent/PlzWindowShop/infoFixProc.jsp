<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="yoo.MemberDAO" %>
<!DOCTYPE html>
<%
    //Register.jsp->RegisterProc.jsp->Memberinsert.jsp
    request.setCharacterEncoding("utf-8");//한글처리
%>
<jsp:useBean id="mem" class="yoo.MemberDTO" />
<jsp:setProperty name="mem"  property="*" />
<%
	//추가
	String mem_id=request.getParameter("mem_id");
	System.out.println("infoFixProc.jsp의 mem_id=>"+mem_id);
	
	MemberDAO memMgr=new MemberDAO();
	boolean check=memMgr.memberUpdate(mem);
	System.out.println("infoFixProc.jsp의 회원수정유무(check=>)"+check);
%>
<html>
<body bgcolor="#FFFFCC">
<br>
<center>
   <%
        if(check){//회원수정에 성공했다면
    %>
        <script>
        	alert("성공적으로 수정되었습니다.");
        	location.href="login.jsp";
        </script>
  <%}else{ %>
  		<script>
  			alert("수정도중 에러가 발생되었습니다.");
  			history.back();
  		</script>
   <%} %>
</center>
</body>
</html>










