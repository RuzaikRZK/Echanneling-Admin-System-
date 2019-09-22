package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.UnknownHostException;
import java.sql.ResultSet;
import java.util.Random;

import javax.mail.AuthenticationFailedException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.sun.xml.internal.messaging.saaj.packaging.mime.MessagingException;



/**
 * Servlet implementation class ForgetPassword
 */
@WebServlet("/ForgetPassword")
public class ForgetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetPassword() {
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
			
		
		String ema = request.getParameter("email");
		PrintWriter out = response.getWriter();
		PrintWriter pw = response.getWriter();
		String num = request.getParameter("number");
		
		try {
			ResultSet rs =Database.getData("select email from admin_login where email='"+ema+"'");
			//System.out.print(rs);
			
			if(rs.next()) {
				
						
						
					
							
							Random rnd = new Random();
							int n = 100000 + rnd.nextInt(900000);
							
							Database.setData("UPDATE admin_login SET random = '"+n+"' WHERE email='"+ema+"'");
							
							String newid=Integer.toString(n);
							
							
							
							
					
						Email e = new Email(ema,"Confirmation Code -"+newid,"Medicare Admin Password Reset");
							
							
							
							JOptionPane.showMessageDialog(null, "Failed", "Email Not Found", JOptionPane.ERROR_MESSAGE);
							RequestDispatcher rd  = request.getRequestDispatcher("forgetpassword.jsp");
			        	    rd.include(request, response);
							

							
			        
	
				
				
			}else {
				
				JOptionPane.showMessageDialog(null, "Failed", "Email Not Found", JOptionPane.ERROR_MESSAGE);
				RequestDispatcher rd  = request.getRequestDispatcher("forgetpassword.jsp");
        	    rd.include(request, response);
        	    
				
			}
		
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
	}

	/*
	public void sms(String num,String mass) {
		
		 ClockWorkSmsService clockWorkSmsService;
		try {
			clockWorkSmsService = new ClockWorkSmsService("fd16ed82dda46ec8f52209936861f57b1ee4a8c7");
			SMS sms = new SMS(num, mass);
	        ClockworkSmsResult result = clockWorkSmsService.send(sms);
		} catch (ClockworkException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
		
	}
	*/
}
