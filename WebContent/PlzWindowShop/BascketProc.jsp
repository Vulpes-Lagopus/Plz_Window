<%@ page contentType="text/html;charset=utf-8"%>
<jsp:useBean id="BascketDAO" class="yoo.BascketDAO" scope="session"/>
<jsp:useBean id="bascket" class="yoo.BascketDTO" />
<jsp:setProperty name="bascket" property="*" />
<%
	String flag=request.getParameter("flag");
	String mem_id= (String)session.getAttribute("idKey");
	String basc_number= (String)session.getAttribute("idKey");
	
	if(mem_id == null) {
		response.sendRedirect("login.jsp");
	}else{

		if(flag == null){
		bascket.setMem_id(mem_id);		
		BascketDAO.bascketInsert(bascket);
%>
		<script>
		alert("장바구니에 담았습니다.");
		location.href="Bascket.jsp";
		</script>
<%		}else if(flag.equals("update")){
	    bascket.setMem_id(mem_id);
		BascketDAO.bascketUpdate(bascket);
%>
		<script>
		alert("장바구니에서 수정완료");
		location.href="Bascket.jsp";
		</script>
<%		}else{
		BascketDAO.bascketDelete(basc_number, mem_id);
%>
		<script>
		alert("장바구니에서 삭제완료");
		location.href="Bascket.jsp";
		</script>
<%
		}
	}
%>