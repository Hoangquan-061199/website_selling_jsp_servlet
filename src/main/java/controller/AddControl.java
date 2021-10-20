package controller;

import java.io.IOException;

import dao.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/add")
public class AddControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
		String name = req.getParameter("name");
		String image = req.getParameter("image");
		String pricenew = req.getParameter("pricenew");
		String pricelast = req.getParameter("pricelast");
		String description = req.getParameter("description");
		int category = Integer.parseInt(req.getParameter("category"));

		DAO dao = new DAO();

		dao.addProduct(name, image, pricenew, pricelast, description, category);

		resp.sendRedirect("views/ManageProduct.jsp");
		
//		req.getRequestDispatcher("views/ManageProduct.jsp").forward(req, resp);

	}
}
