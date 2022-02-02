package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
//import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
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
		
		BookDAO bookdao = new BookDAO();
		String q = request.getParameter("q");
		
		ArrayList<BookDTO> list = new ArrayList<BookDTO>();
		Map<String, String> map = new HashMap<String, String>();

		list = bookdao.bookSearch(q);
		
		for(BookDTO item:list) {
			request.setAttribute("img", String.format("%s", item.getBookimg()));
			request.setAttribute("name", String.format("name:%s", item.getBname()));
			request.setAttribute("author", String.format("author:%s", item.getAuthor()));
			request.setAttribute("grade", String.format("grade:%d", item.getBgrade()));
			request.setAttribute("review", String.format("review:%d", item.getReview()));
			
			map.put("img", String.format("%s", item.getBookimg()));
			map.put("name", String.format("name:%s", item.getBname()));
			map.put("author", String.format("author:%s", item.getAuthor()));
			map.put("grade", String.format("grade:%d", item.getBgrade()));
			map.put("review", String.format("review:%d", item.getReview()));
			
			request.setAttribute("size", list.size());
			request.setAttribute("item", list.get(0));
			request.setAttribute("item2", list.get(1));
		}
		
		for(int i=0; i<list.size(); i++) {
				request.setAttribute("bookimg", list.get(0).getBookimg());
		}
		
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/search.jsp");
		rd.forward(request, response);
	}
}