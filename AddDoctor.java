package Admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddDoctor
 */
@WebServlet("/AddDoctor")
public class AddDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDoctor() {
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
		
		String password =request.getParameter("pass");
		String dname =request.getParameter("name");
		String dnic =request.getParameter("nic");
		String dmid =request.getParameter("mid");
		String dtype =request.getParameter("type");
		String demail =request.getParameter("email");
		String dage =request.getParameter("age");
		String daddress =request.getParameter("address");
		String dcontact =request.getParameter("contact");
		
		
		try {
			
			Database.setData("insert into doctor values ('0','"+dname+"','"+password+"','"+dname+"','"+dnic+"','"+dmid+"','"+dtype+"','"+demail+"','"+dage+"','"+daddress+"','0','unbanned') ") ;Database.setData("insert into doctor values ('0','"+dname+"','"+password+"','"+dname+"','"+dnic+"','"+dmid+"','"+dtype+"','"+demail+"','"+dage+"','"+daddress+"','0') ") ;
	     	    
	     
	
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		try {
			
			Database.setData("insert into doctor_contact (userID,phone) values ((select userID from doctor where name='"+dname+"' ),'"+dcontact+"')");
			//Email e = new Email(demail,"Your Successfully Register To Medicare Echanneling System As a Doctor", "Your Password -"+password +"\n"+"Your User Name -"+demail);
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		 RequestDispatcher rd  = request.getRequestDispatcher("Add Doctor.jsp");
  	    rd.include(request, response);
		
	}

}
