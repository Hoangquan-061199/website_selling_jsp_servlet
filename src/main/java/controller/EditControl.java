package controller;

import java.io.IOException;

import dao.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/editProduct")
public class EditControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String image = req.getParameter("image");
		String pricenew = req.getParameter("pricenew");
		String pricelast = req.getParameter("pricelast");
		String description = req.getParameter("description");
		String category = req.getParameter("category");
		String pid = req.getParameter("id");
		
		DAO dao = new DAO();
		dao.editProduct(name, image, pricenew, pricelast, description, category, pid);
		resp.sendRedirect("manager");
	}
}
