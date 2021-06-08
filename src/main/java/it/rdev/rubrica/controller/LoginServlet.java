package it.rdev.rubrica.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.rdev.rubrica.dto.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user = new User()
				.setPassword(request.getParameter("password"))
				.setUsername(request.getParameter("username"));
		String action = request.getParameter("action");
		
		if( user.getUsername() != null && ( user.getUsername().equals("root") && user.getPassword().equals("toor"))) {
			HttpSession session = request.getSession();
			session.setAttribute("USER", user);
		}
		else {
			if(action==null)
			request.setAttribute("login-error", "Utente o password errati.");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		
		if(action != null && action.equals("logout") ) {
			HttpSession session = request.getSession();
			session.invalidate();
		}
		
		request.getRequestDispatcher("/").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
