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
	<h2>회원가입</h2>
	<form action="MemberList.do" method="post">
		<table width="500" border="1">
			<tr height="50">
				<td width="150" align="center">아이디</td>
				<td width="350" align="center">
					<input type="text" name="id" size="40">
				</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">비밀번호</td>
				<td width="350" align="center">
					<input type="password" name="pass1" size="40">
				</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">비밀번호 확인</td>
				<td width="350" align="center">
					<input type="password" name="pass2" size="40">
				</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">이메일</td>
				<td width="350" align="center">
					<input type="email" name="email" size="40">
				</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">전화번호</td>
				<td width="350" align="center">
					<input type="tel" name="tel" size="40">
				</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">관심분야</td>
				<td width="350" align="center">
					<input type="checkbox" name="hobby" value="캠핑">캠핑 &nbsp;&nbsp;
					<input type="checkbox" name="hobby" value="등산">등산 &nbsp;&nbsp;
					<input type="checkbox" name="hobby" value="영화">영화 &nbsp;&nbsp;
					<input type="checkbox" name="hobby" value="독서">독서 &nbsp;&nbsp;
				</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">직업</td>
				<td width="350" align="center">
					<select name="job">
						<option value="의사">의사</option>
						<option value="변호사">변호사</option>
						<option value="검사">검사</option>
						<option value="기술사">기술사</option>
					</select>
				</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">나이</td>
				<td width="350" align="center">
					<input type="radio" name="age" value="20">20대 &nbsp;&nbsp;
					<input type="radio" name="age" value="30">30대 &nbsp;&nbsp;
					<input type="radio" name="age" value="40">40대 &nbsp;&nbsp;
					<input type="radio" name="age" value="50">50대 &nbsp;&nbsp;
				</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">기타 정보</td>
				<td width="350" align="center">
					<textarea rows="5" cols="40" name="info"></textarea>
				</td>
			</tr>
			<tr height="50">
				<td align="center" colspan="2">
					<input type="submit" value="회원가입">
					<input type="reset" value="초기화">					
				</td>
			</tr>
		</table>
	</form>
	</center>
</body>
</html>













