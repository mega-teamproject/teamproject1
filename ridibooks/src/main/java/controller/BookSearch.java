package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
import dto.BookDTO;

@WebServlet("/booksearch")
public class BookSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		BookDAO bookdao = new BookDAO();
		String q = request.getParameter("q");
		
		ArrayList<BookDTO> list = new ArrayList<BookDTO>();

		list = bookdao.bookSearch(q);
		
		out.println(list);
		
		out.close();
	}
}
