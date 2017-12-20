<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<h2>게시글 삭제</h2>
	<form action="BoardDeleteProcCon.do" method="post">
	<table width="600" border="1">
		<tr height="40">
			<td align="center" width="120">작성자</td>
			<td align="center" width="180">${bean.writer}</td>
		</tr>
		<tr height="40">
			<td align="center" width="120">비밀번호</td>
			<td align="center" width="180"><input type="password" name="password" size="60"></td>
		</tr>
		<tr height="40">
			<td align="center" colspan="2">
				<input type="hidden" name="pass" value="${bean.password}">
				<input type="hidden" name="num" value="${bean.num}">
				<input type="submit" value="삭제하기" onclick="return confirm('삭제하시겠습니까?');"> &nbsp;&nbsp;&nbsp;
				<input type="button" value="글 전체목록 보기" onclick="location.href='BoardListCon.do'">
			</td>
		</tr>
	</table>
	</form>
	</center>
</body>
</html>