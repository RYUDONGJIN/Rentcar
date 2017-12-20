<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	
	if(id==null) id="GUEST";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="1000" bordercolor="white">
		<tr height="70">
			<td colspan="4">
				<a href="RentcarMain.jsp"><img src="img/rent.jpg" height="65"></a>
			</td>
			<td align="center" width="200">
				<%= id %>님 <br>
		<%
			if(id.equals("GUEST")){
		%>
				<button onclick="location.href='RentcarMain.jsp?center=MemberLogin.jsp'">로그인</button>
				<button onclick="location.href='RentcarMain.jsp?center=MemberJoin.jsp'">회원가입</button>
		<%
			} else {
		%>
				<button onclick="location.href='MemberLogout.jsp'">로그아웃</button>
		<%	
			}
		%>					
			</td>
		</tr>
		<tr height="50">
			<td align="center" width="200" bgcolor="orange">
				<font size="4"><a href="RentcarMain.jsp?center=CarReserveMain.jsp" style="text-decoration:none; color:white">예약하기</a></font>
			</td>
			<td align="center" width="200" bgcolor="orange">
				<font size="4"><a href="RentcarMain.jsp?center=CarReserveView.jsp" style="text-decoration:none; color:white">예약확인</a></font>
			</td>
			<td align="center" width="200" bgcolor="orange">
				<font size="4"><a href="BoardListCon.do" style="text-decoration:none; color:white">자유게시판</a></font>
			</td>
			<td align="center" width="200" bgcolor="orange">
				<font size="4"><a href="#" style="text-decoration:none; color:white">이벤트</a></font>
			</td>
			<td align="center" width="200" bgcolor="orange">
				<font size="4"><a href="#" style="text-decoration:none; color:white">고객센터</a></font>
			</td>
		</tr>
	</table>
</body>
</html>







