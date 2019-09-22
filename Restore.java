package Admin;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Restore
 */
@WebServlet("/Restore")
public class Restore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Restore() {
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
		
			String Restore =request.getParameter("rest");
			String s=request.getParameter("pathw").replace("\\", "\\\\");
			System.out.println(s);
			
			if(Restore.equals("res")) {
				
				Backup b = new Backup();
				try {
					b.Restore(s);
					
				} catch (InterruptedException e) {
					
					e.printStackTrace();
				}
				
				String timeStamp = new SimpleDateFormat("yyyy/MM/dd").format(Calendar.getInstance().getTime());
				try {
					Database.setData("update Backup_Recover_Status set recover ='"+timeStamp+"' where id =1");
				} catch (Exception e) {
					
					e.printStackTrace();
				}
				 RequestDispatcher rd  = request.getRequestDispatcher("Settings.jsp");
		     	    rd.include(request, response);
				
			}else {
				
				
				
			}
		
		
	}

}
