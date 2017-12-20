<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int no = Integer.parseInt(request.getParameter("no"));
	int qty = Integer.parseInt(request.getParameter("carqty"));
	String img = request.getParameter("img");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<form action="RentcarMain.jsp?center=CarReserveResult.jsp" method="post">
		<table width="1000">
			<tr height="60">
				<td colspan="3" align="center"><font size="5" color="gray">옵션 선택</font></td>
			</tr>
			<tr>
				<td rowspan="7" width="500" align="center"><img src="img/<%=img%>" width="450"></td>
				<td width="250" align="center">대여기간</td>
				<td width="250" align="center">
					<select name="dday">
						<option value="1">1일</option>
						<option value="2">2일</option>
						<option value="3">3일</option>
						<option value="4">4일</option>
						<option value="5">5일</option>
						<option value="6">6일</option>
						<option value="7">7일</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="250" align="center">대여일</td>
				<td width="250" align="center"><input type="date" name="rday" size="15"></td>
			</tr>
			<tr>
				<td width="250" align="center">보험 적용</td>
				<td width="250" align="center">
					<select name="usein">
						<option value="1">적용(1일 1만원)</option>
						<option value="2">미적용</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="250" align="center">Wifi 적용</td>
				<td width="250" align="center">
					<select name="usewifi">
						<option value="1">적용(1일 1만원)</option>
						<option value="2">미적용</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="250" align="center">네비게이션 적용</td>
				<td width="250" align="center">
					<select name="usenavi">
						<option value="1">적용(무료)</option>
						<option value="2">미적용</option>
					</select>
				</td>
			</tr>
			<tr>
				<td width="250" align="center">베이비시트 적용</td>
				<td width="250" align="center">
					<select name="useseat">
						<option value="1">적용(1일 1만원)</option>
						<option value="2">미적용</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="hidden" name="no" value="<%=no%>">
					<input type="hidden" name="qty" value="<%=qty%>">
					<input type="submit" value="차량 예약하기">
				</td>
			</tr>
		</table><br><br><br><br><br><br>
	</form>
	</center>
</body>
</html>












