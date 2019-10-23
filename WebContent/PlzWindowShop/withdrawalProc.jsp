<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="yoo.MemberDAO" %>
<!DOCTYPE html>
<%
	//추가
	String mem_id=request.getParameter("mem_id");
	String mem_password=request.getParameter("mem_password");
	
	System.out.println("withdrawal.jsp의 mem_id=>"+mem_id+", mem_password=>"+mem_password);
	
	MemberDAO memMgr=new MemberDAO();
	int check=memMgr.memberDelete(mem_id, mem_password);
	System.out.println("withdrawalProc.jsp의 회원삭제유무(check=>)"+check);
%>
   <%
        if(check==1){//회원삭제에 성공했다면
        	session.invalidate();
    %>
        <script>
        	alert("<%=mem_id %>님 빠이염!");
        	location.href="login.jsp";
        </script>
  <%}else{ %>
  		<script>
  			alert("비밀번호가 틀립니다.\n다시 한번 확인바랍니다.");
  			history.back();
  		</script>
   <%} %>
