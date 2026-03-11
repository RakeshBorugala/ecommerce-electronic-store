package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateProductServletDAO 
{
	
	int updateproduct(String pcode,int pqty,HttpServletRequest req,HttpServletResponse res)
	{
		int rowCount=0;
		try
		{
			Connection con=DBConnect.getcon();
			PreparedStatement pstm=con.prepareStatement("select pqty,pprice from product where pcode=?");
			pstm.setString(1, pcode);
			ResultSet rs=pstm.executeQuery();
			if(rs.next())
			{
				if(Integer.parseInt(rs.getString(1))>=pqty)
				{
					PreparedStatement pstm2=con.prepareStatement("update product set pqty=pqty-? where pcode=?");
					pstm2.setInt(1,pqty);
					pstm2.setString(2, pcode);
					rowCount=pstm2.executeUpdate();
					req.setAttribute("bill",Double.parseDouble(rs.getString(2))*pqty);
					req.setAttribute("rowCount", rowCount);
				}
				else
				{
					req.setAttribute("msg","There is no enough Produts");
					req.getRequestDispatcher("OrderCancelled.jsp").forward(req, res);
				}
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
				
	}
}
