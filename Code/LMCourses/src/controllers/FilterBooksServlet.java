package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojoFiles.BookBean;
import daoFiles.FilterBooksDAO;


/**
 * Servlet implementation class FilterServlet
 */
@WebServlet("/FilterBooksServlet")
public class FilterBooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FilterBooksServlet(){
		super();
	}
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String [] selectedBookCategories = request.getParameterValues("book");
		FilterBooksDAO filterBooksDAO = new FilterBooksDAO();
		List<BookBean> listOfBooks= filterBooksDAO.getSelectedBooks(selectedBookCategories);
		request.setAttribute("listOfBooks", listOfBooks);
		request.getRequestDispatcher("FilteredBooksPage.jsp").forward(request,response);
	}
}
