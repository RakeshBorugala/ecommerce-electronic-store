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
@WebServlet("/als")
public class AdminLoginServlet extends HttpServlet
{
   protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
   {
	   AdminLoginDAO obj=new AdminLoginDAO();
	   AdminBean bean=obj.CheckAdminLogin(req.getParameter("uname"),req.getParameter("upwd"));
	   if(bean==null)
	   {
		   req.setAttribute("msg","Invaild Credentials!! Please try Again");
		   RequestDispatcher rd=req.getRequestDispatcher("InvalidAdmin.jsp");
		   rd.forward(req, res);
	   }
	   else
	   {
		   HttpSession session=req.getSession();
		   session.setAttribute("abean",bean);
		   RequestDispatcher rd=req.getRequestDispatcher("AdminHome.jsp");
		   rd.forward(req, res);
	   }
	   
   }
}
