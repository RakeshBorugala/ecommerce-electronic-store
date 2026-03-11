package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerRegisterDAO
{
   int insertcustomer(CustomerBean cbean)
   {
	   int rowCount=0;
	   try
	   {
		   Connection con=DBConnect.getcon();
		   PreparedStatement pstm=con.prepareStatement("insert into customer values (?,?,?,?,?,?,?)");
	       pstm.setString(1,cbean.getUserName());
	       pstm.setString(2, cbean.getPassword());
	       pstm.setString(3,cbean.getFirstName());
	       pstm.setString(4,cbean.getLastName());
	       pstm.setString(5,cbean.getAddress());
	       pstm.setString(6,cbean.getMailid());
	       pstm.setString(7,cbean.getMobile());
	       rowCount=pstm.executeUpdate();
	       
	       
	   }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
	   return rowCount;
   }
}
