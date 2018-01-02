package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojoFiles.BookBean;
import daoFiles.SelectedBookDAO;

/**
 * Servlet implementation class SelectedSessionServlet
 */
@WebServlet("/SelectedBookServlet")
public class SelectedBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectedBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String selectedBookCode = request.getParameter("value");
		SelectedBookDAO selectedBookDAO = new SelectedBookDAO();
		BookBean book = selectedBookDAO.getBookAttributes(selectedBookCode);
		request.setAttribute("selectedBook", book);
		request.getRequestDispatcher("SelectedBook.jsp").forward(request,response);
	}

	

}
