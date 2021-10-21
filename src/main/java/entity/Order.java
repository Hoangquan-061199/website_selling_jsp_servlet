package entity;

public class Order {
	private int id;
	private String order_name;
	private String address;
	private String phone;
	private double total;

	public Order(int id, String order_name, String address, String phone, double total) {
		this.id = id;
		this.order_name = order_name;
		this.address = address;
		this.phone = phone;
		this.total = total;
	}
	
	public Order(String order_name, String address, String phone, double total) {
		this.order_name = order_name;
		this.address = address;
		this.phone = phone;
		this.total = total;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

}
