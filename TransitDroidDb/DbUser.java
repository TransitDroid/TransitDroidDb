import java.sql.SQLException;

import transitdroid.data.TableDataGateway;



public class DbUser extends TableDataGateway{

	private static final String CREATE = "CREATE USER 'me' IDENTIFIED BY 'pass'";
	private static final String GRANT =	"GRANT ALL ON `transit_hub`.* TO 'me'@'%' IDENTIFIED BY 'pass'";
	private static final String GRANTLOCAL = "GRANT ALL ON `transit_hub`.* TO 'me'@'localhost' IDENTIFIED BY 'pass'";
	private static final String	FLUSH = "FLUSH PRIVILEGES";
	
	public static boolean createUser() throws SQLException{
		prepareStatement(CREATE);
		if (!execute()) return false;

		prepareStatement(GRANT);
		if (!execute()) return false;
		
		prepareStatement(GRANTLOCAL);
		if (!execute()) return false;
		
		prepareStatement(FLUSH);
		return execute();
	}
	
}
