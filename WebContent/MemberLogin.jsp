<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="MemberLoginProc.jsp" method="post">
		<table width="350" border="1" bordercolor="gray">
			<tr height="60">
				<td align="center" colspan="2"><font size="5" color="gray"><b>로 그 인</b></font></td>
			</tr>
			<tr height="40">
				<td width="150" align="center">아이디</td>
				<td width="200"><input type="text" name="id" placeholder="아이디를 입력하세요" size="20"></td>
			</tr>
			<tr height="40">
				<td width="150" align="center">비밀번호</td>
				<td width="200"><input type="password" name="pass" placeholder="비밀번호를 입력하세요" size="20"></td>
			</tr>
			<tr height="40">
				<td colspan="2" align="center">
					<input type="submit" value="로그인">
					<input type="button" value="회원가입" onclick="location.href='RentcarMain.jsp?center=MemberJoin.jsp'">				
				</td>
			</tr>
		</table>
	</form>
</body>
</html>