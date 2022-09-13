package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Newspapper;
import entity.Product;

public class DAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<Product> getAllProduct() {
		List<Product> list = new ArrayList<>();
		String query = "select * from products";
		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
						rs.getDouble(6), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	// list phone
	public List<Product> getPhoneProduct() {
		List<Product> list = new ArrayList<>();
		String query = "select * from products join categorys" + " on categorys.id = products.category_id "
				+ "where category_id = 1";
		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
						rs.getDouble(6), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	// list fashion
	public List<Product> getFashionProduct() {
		List<Product> list = new ArrayList<>();
		String query = "select * from products" + " join categorys on " + "categorys.id = products.category_id "
				+ "where category_id = 2";
		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
						rs.getDouble(6), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	// list appliances
	public List<Product> getAppliancesProduct() {
		List<Product> list = new ArrayList<>();
		String query = "select * from products " + "join categorys on " + "categorys.id = products.category_id"
				+ " where category_id = 3";
		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
						rs.getDouble(6), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	// list suggest today
	public List<Product> getSuggestToday() {
		List<Product> list = new ArrayList<>();
		String query = "SELECT * FROM products" + " ORDER BY id DESC LIMIT 10;";
		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
						rs.getDouble(6), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	// list newspappers
	public List<Newspapper> getAllNewspappers() {
		List<Newspapper> list = new ArrayList<>();
		String query = "select * from newspappers";
		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Newspapper(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	// list category
	public List<Category> getAllCategory() {
		List<Category> list = new ArrayList<>();
		String query = "select * from categorys";
		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Category(rs.getInt(1), rs.getString(2)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	// get product by cid
	public List<Product> getProductByCID(String cid) {
		List<Product> list = new ArrayList<>();
		String query = "select * from products" + " where category_id = ?";
		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			ps.setString(1, cid);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
						rs.getDouble(6), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	// get product by pid
	public Product getProductByID(String id) {
		String query = "select * from products" + " where id = ?";
		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
						rs.getDouble(6), rs.getString(7));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	// search
	public List<Product> searchProductByName(String valueSearch) {
		List<Product> list = new ArrayList<>();
		String query = "select * from products" + " where name like ?";
		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + valueSearch + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
						rs.getDouble(6), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	// login
	public Account Login(String uesrname, String password) {
		String query = "select * from accounts" + " where username = ? " + "and password = ?";
		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			ps.setString(1, uesrname);
			ps.setString(2, password);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	public Account checkRegister(String uesrname) {
		String query = "select * from accounts" + " where username = ?";
		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			ps.setString(1, uesrname);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}

	public void Register(String user, String pass) {
		String query = "insert accounts(username," + " password, isSell, isAdmin)" + " values (?, ?, 0, 0)";

		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, pass);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void deleteProduct(String id) {
		String query = "delete from products" + " where id = ?";

		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void addProduct(String name, String image, String pricenew, String pricelast, String description,
			int category) {
		String query = "insert into products" + "(name, imgSrc, priceNew, " + "priceLast, descriptions, "
				+ "category_id)" + "values(?,?,?,?,?,?)";

		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, image);
			ps.setString(3, pricenew);
			ps.setString(4, pricelast);
			ps.setString(5, description);
			ps.setInt(6, category);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void editProduct(String name, String image, String pricenew, String pricelast, String description,
			String category, String pid) {
		String query = "update products\n" + "set name = ?,\n" + "imgSrc = ?,\n" + "priceNew = ?,\n"
				+ "priceLast = ?,\n" + "descriptions = ?,\n" + "category_Id = ?\n" + "where id = ?";

		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, image);
			ps.setString(3, pricenew);
			ps.setString(4, pricelast);
			ps.setString(5, description);
			ps.setString(6, category);
			ps.setString(7, pid);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public int addOrder(String order_name, String address, String phone, int total) {
		String query = "insert into orders" + "(order_name, address, phone, total)" + "values(?,?,?,?)";

		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, order_name);
			ps.setString(2, address);
			ps.setString(3, phone);
			ps.setInt(4, total);
			ps.executeUpdate();

			try (ResultSet rs = ps.getGeneratedKeys()) {
				if (rs.next()) {
					return rs.getInt(1);
				}
				rs.close();
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		return 0;
	}

	public void addOrderDetail(int order_id, int product_id, int quantity, double price) {
		String query = "insert into order_detail" + "(order_id, product_id, quantity, price)" + "values(?,?,?,?)";

		try {
			conn = new DBContext().getConnection(); // open connect mySql
			ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			ps.setInt(1, order_id);
			ps.setInt(2, product_id);
			ps.setInt(3, quantity);
			ps.setDouble(4, price);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		DAO dao = new DAO();
		dao.editProduct("abc", "abc", "123", "321", "oke", "1", "3");
	}

}
