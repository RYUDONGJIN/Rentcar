<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//프로젝트 내에 만들어질 폴더를 저장할 이름 변수 선언
	String realfolder="";
	//실제 만들어질 폴더명을 설정
	String savefolder="/upload";
	//한글 설정
	String encType ="UTF-8";
	//저장될 파일 사이즈를 설정
	int maxSize = 1024 * 1024 * 5; //5M
	
	//파일이 저장될 경로값을 읽어오는 객체
	ServletContext context = request.getServletContext();
	realfolder = context.getRealPath(savefolder);
	
	try {
		//클라이언트로부터 넘어온 데이터를 저장해주는 객체
		MultipartRequest multi = new MultipartRequest(request, realfolder, maxSize, encType, new DefaultFileRenamePolicy());//파일이름 변경을 자동으로해주는 클래스
%>
	당신의 이름은 <%=multi.getParameter("name") %>
<%		
		out.println(realfolder);
	} catch (Exception e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>