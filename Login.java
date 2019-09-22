package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import javax.swing.plaf.ActionMapUIResource;




/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
try {
			
			
			
			String name=request.getParameter("user");
			String password=request.getParameter("password");
			PrintWriter out = response.getWriter();

			   ResultSet rs= Database.getData("SELECT name,pass FROM admin_login WHERE name='"+name+"' &&  pass='"+password+"'");
	           if(rs.next()){
	        	   
	        	 Camera.Cam();
	   			
	        	PrintWriter pw = response.getWriter();
	   			
	   			
	   			
	   		 RequestDispatcher rd  = request.getRequestDispatcher("Dashboard.jsp");
     	    rd.include(request, response);
     	   
	   		 
	        	   
	        	   
	           }else {
	        	  
	        	   
	        	   
	        	    RequestDispatcher rd  = request.getRequestDispatcher("logininterface.jsp");
	        	    rd.include(request, response);
	        	   
	        	  
	        	  // response.sendRedirect("logininterface.jsp");
	        	    out.println("<script type=\"text/javascript\">");
	        	       out.println("alert('check Your User Name Or Password');");
	        	       out.println("</script>");
	        	      
	  	      
	   			
	           }
			
			
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		
		}catch(ClassNotFoundException e) {
			
			e.printStackTrace();
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		
		
		
		
	
	
	}
	
	
	
	
		
		
	}


