package entity;

public class ProductCart {
	public int quantity;
	public Product product;
	public ProductCart(int quantity, Product product) {
		this.quantity = quantity;
		this.product = product;
	}
	
	public void incrementQuantity() {
		this.quantity++;
	}
}
