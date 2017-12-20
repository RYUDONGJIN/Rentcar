<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String center = request.getParameter("center");
	if(center==null) center="Center.jsp";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<table width="1000">
		<tr height="140" align="center">
			<td align="center" width="1000"><jsp:include page="Top.jsp"/></td>
		</tr>
		<tr height="470" align="center">
			<td align="center" width="1000"><jsp:include page="<%=center %>"/></td>
		</tr>
		<tr height="100" align="center">
			<td align="center" width="1000"><jsp:include page="Bottom.jsp"/></td>
		</tr>
	</table>
	</center>
</body>
</html>