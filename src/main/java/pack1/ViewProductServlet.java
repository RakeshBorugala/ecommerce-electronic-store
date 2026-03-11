package pack1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/View")
public class ViewProductServlet extends HttpServlet
{
  protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
  {
	  HttpSession session=req.getSession(false);
	  if(session==null)
	  {
		  req.setAttribute("msg","Session was expired");
		  req.getRequestDispatcher("AdminLogin.html").forward(req, res);
	  }
	  else
	  {
		ArrayList<ProductBean> al=new ViewProductDAO().reteriveData();
		session.setAttribute("Productlist", al);
		RequestDispatcher rd=req.getRequestDispatcher("ViewProduct.jsp");
		rd.forward(req, res);
		
		
	  }
  }
}
