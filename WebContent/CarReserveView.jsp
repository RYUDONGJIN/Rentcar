<%@page import="db.CarReserveBean"%>
<%@page import="db.ReserveViewBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.RentcarDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	if(id==null){
%>
	<script type="text/javascript">
		alert('로그인을 먼저 해주세요');
		location.href='RentcarMain.jsp?center=MemberLogin.jsp';
	</script>
<%
	}
	RentcarDAO rdao = new RentcarDAO();
	ArrayList<ReserveViewBean> al = rdao.getAllReserve(id);
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
			<td align="center" colspan="11"><font size="5" color="gray">차량 예약 목록</font></td>
		</tr>
	</table>
	<table width="1000" border="1" bordercolor="#FFA500">
		<tr height="40">
			<td width="150" align="center">이미지</td>
			<td width="150" align="center">차량명</td>
			<td width="130" align="center">대여일</td>
			<td width="80" align="center">대여기간</td>
			<td width="100" align="center">금액</td>
			<td width="60" align="center">수량</td>
			<td width="60" align="center">보험</td>
			<td width="60" align="center">wifi</td>
			<td width="60" align="center">베이비시트</td>
			<td width="60" align="center">네비</td>
			<td width="90" align="center">삭제</td>
		</tr>
	<%
		for(int i=0; i<al.size(); i++){
			ReserveViewBean bean = al.get(i);
	%>
		<tr height="70">
			<td width="150" align="center"><img src="img/<%=bean.getImg()%>" width="120" height="70"></td>
			<td width="150" align="center"><%=bean.getName() %></td>
			<td width="130" align="center"><%=bean.getRday() %></td>
			<td width="80" align="center"><%=bean.getDday() %></td>
			<td width="100" align="center"><%=bean.getPrice() %></td>
			<td width="60" align="center"><%=bean.getQty() %></td>
			<td width="60" align="center">적용</td>
			<td width="60" align="center">사용</td>
			<td width="60" align="center">사용</td>
			<td width="60" align="center">사용</td>
			<td width="90" align="center">
				<button onclick="location.href='CarReserveDel.jsp?id=<%=id%>&rday=<%=bean.getRday()%>'">삭제</button>
			</td>
		</tr>
	<%
		}
	%>
	</table>
	</center>
</body>
</html>






