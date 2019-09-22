package Admin;

public class AdminReportAdapter implements IRemoteAdminReport {

	
	IAdminReport adminrep;
	public AdminReportAdapter(IAdminReport adminrep) {
		
		this.adminrep=adminrep;
		
	}
	
	
	@Override
	public String generatefullreport() {
		
		
		String values ="patient Name :"+adminrep.patient(12)+"Amount :"+adminrep.amount(12)+"Tranasction ID"+adminrep.TransactionId(12);
		System.out.println(values);
		
		
		
		
		
		
		return values;
	}

}
