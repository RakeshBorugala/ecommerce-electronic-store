package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteProductDAO
{
	int DeleteProduct(ProductBean pb)
	{
		int rowCount=0;
		try
		{
			Connection con=DBConnect.getcon();
			
			PreparedStatement pstm=con.prepareStatement("delete from product where pcode=?");
			pstm.setString(1,pb.getpCode());
			rowCount=pstm.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
