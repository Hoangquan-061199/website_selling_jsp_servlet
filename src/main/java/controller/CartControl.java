package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import dao.DAO;
import entity.Product;
import entity.ProductCart;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/cart/*")
public class CartControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String action = req.getPathInfo();
		
		System.out.println("action");
		
		System.out.println(action);
		
		switch (action) {
		case "/add-to-cart":
			addToCart(req, resp);
			break;

		default:
			break;
		}
	}
	

	public static void addToCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		
		DAO dao = new DAO();
		Product product = dao.getProductByID(id);
		
		HttpSession session = req.getSession();
		ProductCart productCart;
		
		HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
		if(cart == null) {
			cart = new HashMap<Integer, ProductCart>();
			productCart = new ProductCart(1, product);
			cart.put(Integer.parseInt(id), productCart);
			
		} else if (cart.containsKey(id)) {
			productCart = cart.get(id);
			productCart.incrementQuantity();
			
		} else {
			productCart = new ProductCart(1, product);
			cart.put(Integer.parseInt(id), productCart);
		}

		session.setAttribute("cart", cart);
		
		for(Map.Entry<Integer, ProductCart> entry: cart.entrySet()) {
			System.out.println(entry.getValue().product.getName() + " : Số lượng " + entry.getValue().quantity);
		}
	}
	
	
	
	

}
