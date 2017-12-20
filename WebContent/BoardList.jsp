<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${msg == 1}">
		<script type="text/javascript">
			alert('수정이 완료되었습니다.');
		</script>
	</c:if>
	<c:if test="${msg == 2}">
		<script type="text/javascript">
			alert('삭제가 완료되었습니다.');
		</script>
	</c:if>
	<c:if test="${msg == -1}">
		<script type="text/javascript">
			alert('비밀번호가 일치하지 않습니다.');
			history.go(-1);
		</script>
	</c:if>
	<center>
	<h2>전체 게시글 보기</h2>
		<table width="700" border="1">
			<tr height="40">
				<td colspan="5" align="right">
					<button onclick="location.href='RentcarMain.jsp?center=BoardWriteForm.jsp'">글쓰기</button>
				</td>
			</tr>
			<tr height="40">
				<td align="center" width="50">번호</td>
				<td align="center" width="320">제목</td>
				<td align="center" width="100">작성자</td>
				<td align="center" width="150">작성일</td>
				<td align="center" width="80">조회수</td>
			</tr>
			<c:set var="number" value="${number}"/>
			<c:forEach var="bean" items="${al}">
			<tr height="40">
				<td align="center" width="50">${number}</td>
				<td align="left" width="320">
				<c:if test="${bean.re_step>1}">
					<c:forEach var="j" begin="1" end="${(bean.re_step-1)*5}">
						&nbsp;
					</c:forEach>
				</c:if>
					<a href="BoardInfoControl.do?num=${bean.num}" style="text-decoration:none">${bean.subject}</a>
				</td>
				<td align="center" width="100">${bean.writer}</td>
				<td align="center" width="150">${bean.reg_date}</td>
				<td align="center" width="80">${bean.readcount}</td>
			</tr>
			<c:set var="number" value="${number-1}"/>
			</c:forEach>
		</table>
		<c:if test="${count>0}">
		<c:set var="pageCount" value="${count / pageSize + (count%pageSize == 0 ? 0 : 1)}"/>
		<c:set var="startPage" value="${1}"/>
		<c:if test="${currentPage % 10 != 0}">
			<fmt:parseNumber var="result" value="${currentPage/10}" integerOnly="true"/>
			<c:set var="startPage" value="${result*10+1}"/>
		</c:if>
		<c:if test="${currentPage % 10 == 0}">
			<c:set var="startPage" value="${(result-1)*10+1}"/>
		</c:if> 
		<c:set var="pageBlock" value="${10}"/>
		<c:set var="endPage" value="${startPage+pageBlock-1 }"/>
		<c:if test="${endPage>pageCount}">
			<c:set var="endPage" value="${pageCount}"/>
		</c:if>
		<c:if test="${startPage>10}">
			<a href="BoardListCon.do?pageNum=${startPage-10}">[이전] </a>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<a href="BoardListCon.do?pageNum=${i}" style="text-decoration:none">[${i}] </a>
		</c:forEach>
		<c:if test="${endPage<pageCount}">
			<a href="BoardListCon.do?pageNum=${startPage+10}">[다음]</a>
		</c:if>
	</c:if>
	</center>
</body>
</html>














