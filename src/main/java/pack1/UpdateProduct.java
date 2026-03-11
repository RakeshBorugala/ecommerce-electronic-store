package pack1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/updateprod")
public class UpdateProduct extends HttpServlet
{
 protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
 {
	 HttpSession session=req.getSession(false);
	 if(session==null)
	 {
		 req.setAttribute("msg","Session expired");
		 req.getRequestDispatcher("CustomerRegister.html").forward(req, res);
	 }
	 else
	 {
		 int rowcount=new UpdateProductServletDAO().updateproduct(req.getParameter("pcode"),Integer.parseInt(req.getParameter("reqqty")), req, res);
		 if(rowcount>0)
		 {
			 req.setAttribute("order","Your order is placed succesfully");
			 req.getRequestDispatcher("OrderConfirmed.jsp").forward(req, res);
		 }
		 else {

				req.setAttribute("cancel","There is no enough Produts");
				req.getRequestDispatcher("OrderCancelled.jsp").forward(req, res);
		 }
	 }
 }
}
