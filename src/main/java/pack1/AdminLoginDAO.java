package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminLoginDAO 
{
	public AdminBean CheckAdminLogin(String userName,String password)
	{
		AdminBean bean=null;
		try
		{
			Connection con=DBConnect.getcon();
			PreparedStatement pstm=con.prepareStatement("select * from admin where uname=? and pword=?");
			pstm.setString(1,userName);
			pstm.setString(2,password);
			
			ResultSet rs=pstm.executeQuery();
			if(rs.next())
			{
				bean=new AdminBean();
				bean.setUserName(rs.getString(1));
				bean.setPassword(rs.getString(2));
				bean.setFirstName(rs.getString(3));
				bean.setLastName(rs.getString(4));
				bean.setAddress(rs.getString(5));
				bean.setMailId(rs.getString(6));
				bean.setPhone(rs.getString(7));				
			}						
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return bean;
	}
}
