package pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout2")
public class CustomerLogout extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
	{
		HttpSession session=req.getSession(false);
		 if(session==null)
		 {
			 req.setAttribute("msg","Session Expired");
			 req.getRequestDispatcher("CustomerHome.jsp").forward(req, res);
		 }
		 else
		 {
			 req.setAttribute("log","Customer Loggout Succesfuly");
			 req.getRequestDispatcher("Logout.jsp").forward(req, res);
		 }
	}
}
