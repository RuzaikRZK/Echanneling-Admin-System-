package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Backup_Restore
 */
@WebServlet("/Backup_Restore")
public class Backup_Restore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Backup_Restore() {
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
		PrintWriter out = response.getWriter();
		String backupu = request.getParameter("back");
		String restore = request.getParameter("rest");
		String path=request.getParameter("fpath");
		if(backupu.equals("bac")) {
			
			Backup b = new Backup();
			b.Backup();
			 RequestDispatcher rd  = request.getRequestDispatcher("Settings.jsp");
     	    rd.include(request, response);
     	   
     	  
			
		}else {
			
			
			
		}
		
		String timeStamp = new SimpleDateFormat("yyyy/MM/dd").format(Calendar.getInstance().getTime());
		try {
			Database.setData("update Backup_Recover_Status set backup ='"+timeStamp+"' where id =1");
		} catch (Exception e) {
			
			e.printStackTrace();
		}

   	  
	}

}
