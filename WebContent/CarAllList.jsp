<%@page import="db.CarListBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.RentcarDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	RentcarDAO rdao = new RentcarDAO();
	ArrayList<CarListBean> al = rdao.getAllCar();
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
			<td align="center" colspan="3"><font color="gray" size="5">전체 자동차 목록</font></td>
		</tr>
	<%
		int j=0;
		for(int i=0; i<al.size(); i++){
			CarListBean bean = al.get(i);
			if(j%3==0){
	%>
		<tr height="220">
	<% 		} %>
			<td width="333" align="center">
				<a href="RentcarMain.jsp?center=CarReserveInfo.jsp?no=<%=bean.getNo()%>">
					<img src="img/<%=bean.getImg()%>" width="300" height="200">
				</a>
				<p><font size="3" color="gray"><b>차량명 : <%=bean.getName() %></b></font></p>
			</td>
	<%
			if(j%3==2){
	%>
		</tr>
	<%
			}
			j++;
		}
	%>	
	</table>
	</center>
</body>
</html>