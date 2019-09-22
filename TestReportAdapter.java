package Admin;

import java.sql.ResultSet;

public class TestReportAdapter {
	
	public static void main(String [] args) {
		
		IAdminReport ia = new AdminReportImplementation();
		IRemoteAdminReport ir = new RemoteAdminReportImplementation();
			
			
		try {
			
			ResultSet rs=Database.getData("select* from payment ");
			while(rs.next()) {
				AdminReportImplementation ar= new AdminReportImplementation();
				ar.amount(rs.getDouble("amount"));
				ar.patient(rs.getInt("pID"));
				ar.TransactionId(rs.getInt("transactionID"));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
try {
			
			ResultSet rs=Database.getData("select* from payment ");
			while(rs.next()) {
				System.out.println(ia.amount(rs.getDouble("amount")));
				System.out.println(ia.patient(rs.getInt("pID")));
				System.out.println(ia.TransactionId(rs.getInt("transactionID")));
				
				
				
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		System.out.println("\n Remote Report says");
		ir.generatefullreport();
		
		
		
		
	}
	

}
