package Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class Appointment {

	public ArrayList <App> getApp(String date) {
		
		ArrayList <App> al = new ArrayList<App>();
		
		String sql = "select * from appointment where appDate LIKE '%"+ date +"%';";
		
		Connection con = null;
		PreparedStatement pst = null;
		
		try {
			
			con = Database.getConnection();
			pst = con.prepareStatement(sql);
			
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				
				App a = new App();
				
				a.setAppID(rs.getInt(1));
				a.setAppDate(rs.getDate(2));
				a.setDay(rs.getInt(3));
				a.setdID(rs.getInt(7));
				a.setpID(rs.getInt(6));
				a.setTime(rs.getString(4));
				a.setHosp(rs.getString(5));
				
				al.add(a);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return al;
	}
	
}
