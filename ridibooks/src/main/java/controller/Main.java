package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NewBookDAO;
import dto.NewBook;

@WebServlet("/main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		NewBookDAO newbook = new NewBookDAO();
		ArrayList<NewBook> newBookList1 = new ArrayList<NewBook>();
		ArrayList<NewBook> newBookList2 = new ArrayList<NewBook>();
		ArrayList<NewBook> bestseller = new ArrayList<NewBook>();
		
		newBookList1 = newbook.NewBookList(1);
		newBookList2 = newbook.NewBookList(2);
		bestseller = newbook.NewBookList(3);

		request.setAttribute("newBook", newBookList1);
		request.setAttribute("newWeek", newBookList2);
		request.setAttribute("best", bestseller);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/index.jsp");
		rd.forward(request, response);
	}
}