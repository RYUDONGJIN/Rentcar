<%@page import="db.RentcarDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	RentcarDAO rdao = new RentcarDAO();
	int result = rdao.getMember(id, pass);
	if(result == 0){
%>
	<script type="text/javascript">
		alert('회원 아이디 또는 비밀번호가 틀립니다.');
		location.href='RentcarMain.jsp?center=MemberLogin.jsp';
	</script>
<%
	} else {
		session.setAttribute("id", id);
		response.sendRedirect("RentcarMain.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>