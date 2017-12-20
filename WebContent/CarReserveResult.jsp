<%@page import="db.CarListBean"%>
<%@page import="db.RentcarDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="rbean" class="db.CarReserveBean" />
<jsp:setProperty name="rbean" property="*" />
<%
	String id = (String)session.getAttribute("id");
	if(id==null){
%>
	<script type="text/javascript">
		alert('로그인 후 예약이 가능합니다.');
		location.href='RentcarMain.jsp?center=MemberLogin.jsp';
	</script>
<%
	} else {
		rbean.setId(id);
	}
	Date d1 = new Date();
	Date d2 = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	d1 = sdf.parse(rbean.getRday());
	d2 = sdf.parse(sdf.format(d2));
	
	int compare = d1.compareTo(d2);
	if(compare < 0){
%>
	<script type="text/javascript">
		alert('오늘보다 이전 날짜는 선택할 수 없습니다.');
		history.go(-1);
	</script>
<%
	}
	RentcarDAO rdao = new RentcarDAO();
	rdao.setReserveCar(rbean);
	
	CarListBean cbean = rdao.getOneCar(rbean.getNo());
	int totalCar = cbean.getPrice() * rbean.getDday() * rbean.getQty();
	
	int usein = 0;
	if(rbean.getUsein()==1) usein = 10000;
	int usewifi = 0;
	if(rbean.getUsewifi()==1) usewifi = 10000;
	int useseat = 0;
	if(rbean.getUseseat()==1) useseat = 10000;
	
	int totalOption = (rbean.getQty() * rbean.getDday()) * (usein+usewifi+useseat);
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
		<tr height="100">
			<td align="center" colspan="2"><font size="5" color="gray">차량 예약 완료</font></td>
		</tr>
	</table>
	<table width="1000" border="1" bordercolor="#FFA500">
		<tr>
			<td align="center" colspan="2"><img src="img/<%=cbean.getImg()%>" width="470"></td>
		</tr>
		<tr height="70">
			<td align="center" width="100"><font size="5"><b>차량 예약 금액</b></font></td>
			<td align="center" width="200"><font size="5"><b><%=totalCar %>원</b></font></td>
		</tr>
		<tr height="70">
			<td align="center" width="100"><font size="5"><b>차량 옵션 금액</b></font></td>
			<td align="center" width="200"><font size="5"><b><%=totalOption %>원</b></font></td>
		</tr>
		<tr height="70">
			<td align="center" width="100"><font size="5"><b>예약 총 금액</b></font></td>
			<td align="center" width="200"><font size="5"><b><%=totalCar+totalOption %>원</b></font></td>
		</tr>
	</table><br>
	<button onclick="location.href='RentcarMain.jsp?center=CarReserveView.jsp'">예약 목록 확인하기</button>
	</center>
</body>
</html>
















