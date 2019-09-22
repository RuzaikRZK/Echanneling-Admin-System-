package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class changepassword
 */
@WebServlet("/changepassword")
public class changepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changepassword() {
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
		
		String code = request.getParameter("cd");
		String newpassword = request.getParameter("enp");
		PrintWriter out = response.getWriter();
		try {
			ResultSet rs = Database.getData("select random from admin_login where random='"+code+"'");
			
			if(rs.next()) {
				
				Database.setData("UPDATE admin_login SET pass = AES_ENCRYPT('"+newpassword+"', 'usa2010') WHERE random='"+code+"'");
				RequestDispatcher rd  = request.getRequestDispatcher("logininterface.jsp");
        	    rd.include(request, response);
				
			}else {
				
				RequestDispatcher rd  = request.getRequestDispatcher("changepassword.jsp");
        	    rd.include(request, response);
				
				 out.println("<script type=\"text/javascript\">");
      	       out.println("alert('Confirmation Code Is Incorrect');");
      	       out.println("</script>");
				
			}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
