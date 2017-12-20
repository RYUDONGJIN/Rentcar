<%@page import="db.CarListBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.RentcarDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	RentcarDAO rdao = new RentcarDAO();
	ArrayList<CarListBean> al = rdao.getSelectCar();
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
		<tr height="60">
			<td align="center" colspan="3"><font size="5" color="gray">최신형 자동차 목록</font></td>
		</tr>
		<tr height="240">
		<%
			for(int i=0; i<al.size(); i++){
				CarListBean bean = al.get(i);
		%>
			<td width="333" align="center">
				<a href="RentcarMain.jsp?center=CarReserveInfo.jsp?no=<%=bean.getNo()%>">
					<img src="img/<%=bean.getImg()%>" width="300" height="200">
				</a>
				<p style="color:gray; font-weight:bold">
					차량명 : <%=bean.getName() %> &nbsp;&nbsp; 차량가격 : <%=bean.getPrice() %>
				</p>
			</td>
		<%	} %>
		</tr>
	</table>
	<p><font size="4" color="gray"><b>차량 검색 하기</b></font><br><br></p>
	<form action="RentcarMain.jsp?center=CarCategoryList.jsp" method="post">
		<font size="3" color="gray"><b>차량 검색하기</b></font> &nbsp;&nbsp;
		<select name="category">
			<option value="1">소형</option>
			<option value="2">중형</option>
			<option value="3">대형</option>
		</select> &nbsp;&nbsp;
		<input type="submit" value="검색"> &nbsp;&nbsp;
	</form>
	<button onclick="location.href='RentcarMain.jsp?center=CarAllList.jsp'">전체 검색</button>
	</center>
</body>
</html>












