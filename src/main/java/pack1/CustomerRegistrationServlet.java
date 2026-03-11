package pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/crs")
public class CustomerRegistrationServlet extends HttpServlet
{
   protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
   {
	   CustomerBean cbean=new CustomerBean();
	   cbean.setUserName(req.getParameter("uname"));
	   cbean.setPassword(req.getParameter("upwd"));
	   cbean.setFirstName(req.getParameter("fname"));
	   cbean.setLastName(req.getParameter("lname"));
	   cbean.setAddress(req.getParameter("uadd"));
	   cbean.setMailid(req.getParameter("umail"));
	   cbean.setMobile(req.getParameter("umob"));
	   
	   int obj=new CustomerRegisterDAO().insertcustomer(cbean);
	   
	   if(obj>0)
	   {
			/*
			 * req.setAttribute("msg","User Registered Succesfully");
			 * req.getRequestDispatcher("CustomerHome.jsp").forward(req, res);
			 */
		   // ✅ Store in session
           HttpSession session = req.getSession();
           session.setAttribute("cbean", cbean);

           // ✅ Set welcome message
           req.setAttribute("msg", "User Registered Successfully");

           // ✅ Forward to JSP
           req.getRequestDispatcher("CustomerHome.jsp").forward(req, res);
	   }
	   else
	   {
		   req.setAttribute("msg", "Registration Failed. Please try again.");
           req.getRequestDispatcher("CustomerRegister.jsp").forward(req, res);
	   }
	   
   }
}
