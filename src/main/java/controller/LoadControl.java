package controller;

import java.io.IOException;
import java.util.List;

import dao.DAO;
import entity.Category;
import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/loadproduct")
public class LoadControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html; charset=UTF-8");
		String id = req.getParameter("pid");

		DAO dao = new DAO();
		Product product = dao.getProductByID(id);
		List<Category> listAllCategory = dao.getAllCategory();

		req.setAttribute("detail", product);
		req.setAttribute("listAllCategory", listAllCategory);
		
		
		req.getRequestDispatcher("/views/Edit.jsp").forward(req, resp);
	}
}
