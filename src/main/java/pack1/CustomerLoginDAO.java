package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerLoginDAO 
{
   public CustomerBean retrivedata(String userName,String password)
   {
	   CustomerBean cbean=null;
	   try
	   {
		   Connection con=DBConnect.getcon();
		  PreparedStatement pstm=con.prepareStatement("select * from customer where uname=? and pword=?");
		   pstm.setString(1, userName);
		   pstm.setString(2, password);
		   ResultSet rs=pstm.executeQuery();
		   
		  if(rs.next())
		   {
			cbean=new CustomerBean();
				cbean.setUserName(rs.getString(1));
				cbean.setPassword(rs.getString(2));
				cbean.setFirstName(rs.getString(3));
				cbean.setLastName(rs.getString(4));
				cbean.setAddress(rs.getString(5));
				cbean.setMailid(rs.getString(6));
				cbean.setMobile(rs.getString(7));			
		   }
	   }
	   catch(Exception  e) {
		   e.printStackTrace();
	   }
	   return cbean;
   }
}
