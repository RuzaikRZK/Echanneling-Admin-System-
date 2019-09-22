package Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import sun.security.provider.MD5;
import sun.security.provider.SHA;

/**
 * Servlet implementation class Admin_Register
 */
@WebServlet("/Admin_Register")
public class Admin_Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("user");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		
		try {
			Database.setData("insert into admin_login (name,pass,email) values ('"+user+"','"+password+"','"+email+"') ");
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		RequestDispatcher rd  = request.getRequestDispatcher("Settings.jsp");
	    rd.include(request, response);
	}

}
