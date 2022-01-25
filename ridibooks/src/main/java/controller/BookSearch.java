package controller;

import java.io.IOException;
import java.util.ArrayList;

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
		BookDAO bookdao = new BookDAO();
		String q = request.getParameter("q");
		
//		ArrayList<BookDTO> list = bookdao.bookSearch(q);
		
		String test = bookdao.bookSearch(q);
		
		System.out.println("list : " + test);
	}
}
