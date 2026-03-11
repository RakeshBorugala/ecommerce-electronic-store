package pack1;

import java.sql.Connection; 
import java.sql.DriverManager;
import static pack1.DBInfo.*;

public class DBConnect
{
	private static Connection con=null;
	static
	{
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection(dburl,dbuname,dbpwd);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static Connection getcon()
	{
		return con;
	}
}
