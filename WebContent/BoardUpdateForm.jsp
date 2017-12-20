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
	<h2>게시글 수정</h2>
	<table width="600" border="1">
	<form action="BoardUpdateProcCon.do" method="post">
		<tr height="40">
			<td width="120" align="center">작성자</td>
			<td width="180" align="center">${bean.writer}</td>
			<td width="120" align="center">작성일</td>
			<td width="180" align="center">${bean.reg_date}</td>
		</tr>
		<tr height="40">
			<td width="120" align="center">제목</td>
			<td colspan="3" align="center">
				<input type="text" name="subject" value="${bean.subject}" size="60">
			</td>
		</tr>
		<tr height="40">
			<td width="120" align="center">비밀번호</td>
			<td colspan="3" align="center"><input type="password" name="password" size="60"></td>
		</tr>
		<tr height="40">
			<td width="120" align="center">글내용</td>
			<td colspan="3" align="center">
				<textarea name="content" rows="10" cols="65">${bean.content}</textarea>
			</td>
		</tr>
		<tr height="40">
			<td colspan="4" align="center">
				<input type="hidden" name="num" value="${bean.num}">
				<input type="hidden" name="pass" value="${bean.password}">
				<input type="submit" value="수정하기" onclick="return confirm('수정하시겠습니까?');"> &nbsp;&nbsp;&nbsp; </form>
				<input type="button" value="전체 글목록 보기" onclick="location.href='BoardListCon.do'">
			</td>
		</tr> 
	</table>
	</center>
</body>
</html>




