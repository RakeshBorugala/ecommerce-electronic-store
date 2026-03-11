package pack1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/buy")
public class BuyProductServlet extends HttpServlet
{
  protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
  {
	  HttpSession session=req.getSession(false);
	  if(session==null)
	  {
		  req.setAttribute("msg","Session expired");
		  req.getRequestDispatcher("InvalidCustomer.jsp").forward(req, res);
	  }
	  else
	  {
		  String id=req.getParameter("pcode");
		  ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("Productlist");
		  ProductBean pb=null;
		  Iterator<ProductBean>i=al.iterator();
		  while(i.hasNext())
		  {
			   pb=i.next();
			  if(id.equals(pb.getpCode()))
			 break;
		  }
		  req.setAttribute("pb", pb);
	
		  req.getRequestDispatcher("BuyProduct.jsp").forward(req, res);
	  }
  }
}
