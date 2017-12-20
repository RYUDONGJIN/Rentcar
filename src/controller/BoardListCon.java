package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardBean;
import model.BoardDAO;

@WebServlet("/BoardListCon.do")
public class BoardListCon extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reqPro(request, response);
	}
	
	protected void reqPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		int count=0;
		int number=0;
		int currentPage = Integer.parseInt(pageNum);
		BoardDAO bdao = new BoardDAO();
		count = bdao.getAllCount();
		
		int startRow = (currentPage-1)*pageSize +1;
		int endRow = currentPage * pageSize;
		ArrayList<BoardBean> al = bdao.getAllBoard(startRow, endRow);
		number = count - (currentPage-1) * pageSize;
		
		String msg = (String)request.getAttribute("msg");
		
		request.setAttribute("al", al);
		request.setAttribute("number", number);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("count", count);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("msg", msg);
		
		RequestDispatcher dis = request.getRequestDispatcher("RentcarMain.jsp?center=BoardList.jsp");
		dis.forward(request, response);
	}
}















