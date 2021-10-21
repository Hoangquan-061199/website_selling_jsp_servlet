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
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getPathInfo();
//		System.out.println("do get cart");
//		System.out.println("action");
//		System.out.println(action);
		
		if (action == null) {
			action = "/";
		}
		
		switch (action) {
		case "/":
			showcart(req, resp);
			break;

		case "/checkout-success":
			showCheckOutSuccess(req, resp);
			break;
			
		default:
			break;
		}
		return;
	}
	
	
	public void showCheckOutSuccess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/CheckOutSuccess.jsp").forward(req, resp);
		return;
		
	}
	
	private void showcart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		@SuppressWarnings("unchecked")
		HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
//		System.out.println("show cart");
		req.setAttribute("cart", cart);
		
		req.getRequestDispatcher("/views/Cart.jsp").forward(req, resp);
		return;
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String action = req.getPathInfo();
		
//		System.out.println("action");
		
//		System.out.println(action);
		
		switch (action) {
		case "/add-to-cart":
			addToCart(req, resp);
			break;
			
		case "/update-quantity":
			updateQuantity(req, resp);
			break;
			
		case "/checkout":
			checkout(req, resp);
			break;

		default:
			break;
		}
	}
	
	public void checkout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		
		HttpSession session = req.getSession();
		
		@SuppressWarnings("unchecked")
		HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
		int total = 0;
		for(Map.Entry<Integer, ProductCart> entry: cart.entrySet()) {
			total += entry.getValue().quantity * Integer.parseInt(entry.getValue().product.getPriceNew());
		}
		
		DAO dao = new DAO();
		int orderId = dao.addOrder(name, address, phone, total);
		
		for(Map.Entry<Integer, ProductCart> productCart: cart.entrySet()) {
			int pId = productCart.getValue().product.getId();
			int pQuantity = productCart.getValue().quantity;
			int pPrice = productCart.getValue().quantity * Integer.parseInt(productCart.getValue().product.getPriceNew());
			dao.addOrderDetail(orderId, pId, pQuantity, pPrice);
		}
		session.setAttribute("cart", null);
		
		resp.sendRedirect("/ProductManage/checkout-success");
	}
	

	private void updateQuantity(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String quantity = req.getParameter("quantity");
						
		System.out.println(id);
		System.out.println(quantity);
		
		DAO dao = new DAO();
		HttpSession session = req.getSession();
		Product product = dao.getProductByID(id);		
		ProductCart productCart;
		

		@SuppressWarnings("unchecked")
		HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
		if(cart == null) {
			cart = new HashMap<Integer, ProductCart>();
			productCart = new ProductCart(Integer.parseInt(quantity), product);
			cart.put(Integer.parseInt(id), productCart);
			
		} else {
			if (cart.containsKey(Integer.parseInt(id))) {
				
				if (Integer.parseInt(quantity) == 0) {
					cart.remove(Integer.parseInt(id));
				} else {
					productCart = cart.get(Integer.parseInt(id));
					productCart.setQuantity(Integer.parseInt(quantity));
				}
				
				
			} else {
				productCart = new ProductCart(Integer.parseInt(quantity), product);
				cart.put(Integer.parseInt(id), productCart);
			}

		}
		
		
		session.setAttribute("cart", cart);
		resp.sendRedirect("/ProductManage/cart");
		return;
	}

	public static void addToCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		
		DAO dao = new DAO();
		Product product = dao.getProductByID(id);
		
		HttpSession session = req.getSession();
		ProductCart productCart;
		
		@SuppressWarnings("unchecked")
		HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
		if(cart == null) {
			cart = new HashMap<Integer, ProductCart>();
			productCart = new ProductCart(1, product);
			cart.put(Integer.parseInt(id), productCart);
			
		} else {
			if (cart.containsKey(Integer.parseInt(id))) {
				productCart = cart.get(Integer.parseInt(id));
				productCart.incrementQuantity();
				
			} else {
				productCart = new ProductCart(1, product);
				cart.put(Integer.parseInt(id), productCart);
			}

		}
		session.setAttribute("cart", cart);
		
//		for(Map.Entry<Integer, ProductCart> entry: cart.entrySet()) {
//			System.out.println(entry.getValue().product.getName() + " : Số lượng " + entry.getValue().quantity);
//		}
		
		resp.sendRedirect("/ProductManage/cart");
		return;
	}
	
	
	
	

}
