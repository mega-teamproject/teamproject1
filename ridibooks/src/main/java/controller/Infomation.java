package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
import dto.BookDTO;

@WebServlet("/infomation")
public class Infomation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		BookDAO bookdao = new BookDAO();
		int num = Integer.parseInt(request.getParameter("num"));
		ArrayList<BookDTO> info = new ArrayList<BookDTO>();

		info = bookdao.bookSearch(null, num);

		request.setAttribute("info", info);

		System.out.println(info);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/bookInfo.jsp");
		rd.forward(request, response);
	
	}
}
