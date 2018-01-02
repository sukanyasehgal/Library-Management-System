package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoFiles.BookIssueDAO;
import pojoFiles.BookBean;
import pojoFiles.UserBean;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/BookIssueServlet")
public class BookIssueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BookIssueServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		BookBean bookBean = new BookBean();
		bookBean.setCode(request.getParameter("bookCode").substring(13));
		//System.out.println("hello");
		//System.out.println(sessionBean.getCode());
		UserBean userBean = new UserBean();
		userBean.setEmployeeId(Integer.parseInt(request.getParameter("id")));
		userBean.setName(request.getParameter("name"));
		userBean.setPhoneNumber(Long.parseLong(request
				.getParameter("phoneNumber")));
		userBean.setEmail(request.getParameter("email"));

		BookIssueDAO bookIssueDAO = new BookIssueDAO();
		bookIssueDAO.registerUser(userBean, bookBean);

		request.getRequestDispatcher("index.jsp").forward(request, response);

	}

}
