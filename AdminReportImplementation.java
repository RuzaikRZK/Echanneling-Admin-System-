package Admin;

import java.sql.ResultSet;



public class AdminReportImplementation implements IAdminReport {
	int id;
	double amount;
	int pid;
	
	
	@Override
	public int TransactionId(int id) {
	
		this.id=id;
		
		return id;
	}

	@Override
	public double amount(double amount) {
		
		this.amount=amount;
		
		return amount;
	}

	@Override
	public String patient(int pid) {
		this.pid=pid;
		return null;
	}

	

	}





