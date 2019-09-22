package Admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;



/**
 * Servlet implementation class event_handling
 */
@WebServlet("/event_handling")
public class event_hand extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public event_hand() {
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
		
		response.setContentType("text/html"); // informing the client that which format of data/response will be send
		PrintWriter out= response.getWriter(); 
			String date =request.getParameter("date");
			String time =request.getParameter("time");
			String event =request.getParameter("event");
			String option1 =request.getParameter("opt");
			
			
			if(option1.equals("a")) {
				

				try {
					Database.setData("insert into event values('"+0+"','"+date+"','"+time+"','"+event+"','doctor')");
					
				       
	        	    
				} catch (Exception e) {
					
					e.printStackTrace();
				}
				
				
			}else if(option1.equals("b")) {

				try {
					Database.setData("insert into event values('"+0+"','"+date+"','"+time+"','"+event+"','patient')");
					
				       
	        	    
				} catch (Exception e) {
					
					e.printStackTrace();
				}
				
				
			}else {
				
				   JOptionPane.showMessageDialog(null, "Failed", "Error", JOptionPane.ERROR_MESSAGE);
				
			}
			
			
			
			
				
				
		
					

				
				
		
			
			
			
			RequestDispatcher rd  = request.getRequestDispatcher("event_handling.jsp");
    	    rd.include(request, response);
    	    
		
		
		
		
	}

}
