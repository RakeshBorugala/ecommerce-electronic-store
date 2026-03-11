package pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/cls")
public class CustomerLoginServlet extends HttpServlet
{
   protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
   {
	   CustomerBean cbean=new CustomerLoginDAO().retrivedata(req.getParameter("uname"),req.getParameter("upwd"));
	   if(cbean==null)
	   {
		   req.setAttribute("msg","Invalid credinals");
		   req.getRequestDispatcher("InvalidCustomer.jsp").forward(req, res);
	   }
	   else
	   {
		   HttpSession session=req.getSession();
		   session.setAttribute("cbean",cbean);
		   req.getRequestDispatcher("CustomerHome.jsp").forward(req, res);
	   }
	   
   }
}
