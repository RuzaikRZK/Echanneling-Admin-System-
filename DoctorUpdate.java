package Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DoctorUpdate
 */
@WebServlet("/DoctorUpdate")
public class DoctorUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorUpdate() {
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
			
		String dname = request.getParameter("name");
		String dmid = request.getParameter("mid");
		String dspec = request.getParameter("spec");
		String dnic = request.getParameter("nic");
		String demail = request.getParameter("email");
		String up=request.getParameter("update");
		String duid=request.getParameter("uid");
		
		
		if(up.equals("u")) {
			
			try {
				
				Database.setData("update doctor  set name ='"+dname+"',MID ='"+dmid+"',spec ='"+dspec+"',NIC ='"+dnic+"',email ='"+demail+"' where userID ='"+duid+"'");
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}else {
			
			
			
		}
		
		
		 RequestDispatcher rd  = request.getRequestDispatcher("doctorsearch.jsp");
  	    rd.include(request, response);
		
		
		
	}

}
