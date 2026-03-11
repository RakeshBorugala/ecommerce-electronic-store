package pack1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/aps")
public class AddProductServlet extends HttpServlet
{
  protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
  {
	  HttpSession session=req.getSession(false);
	  if(session==null)
	  {
		  req.setAttribute("msg","Session is expired");
		  req.getRequestDispatcher("AdminLogin.html").forward(req, res);
	  }
	  else
	  {
		  ProductBean pb=new ProductBean();
		  
		  pb.setpCode(req.getParameter("pcode"));
		  pb.setpName(req.getParameter("pname"));
		  pb.setpCompany(req.getParameter("pcomp"));
		  pb.setPrice(req.getParameter("price"));
		  pb.setpQty(req.getParameter("pqty"));
		  
		  int rc=new AddProductDAO().insertProducts(pb);
		  if(rc>0)
		  {
		  req.setAttribute("msg","Products added Succesfully");
		  RequestDispatcher rd=req.getRequestDispatcher("AddProduct.jsp");
		  rd.forward(req, res); 
		  }
		  else
		  {
			  req.setAttribute("msg","Duplicate Product ID");
			  RequestDispatcher rd=req.getRequestDispatcher("AddProduct.jsp");
			  rd.forward(req, res); 
		  }
	  }
  }
}
