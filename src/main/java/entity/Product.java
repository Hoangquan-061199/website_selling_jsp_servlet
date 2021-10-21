package entity;

import java.text.NumberFormat;
import java.util.Locale;

public class Product {
	private int id;
	private int category_id;
	private String name;
	private String imgSrc;
	private double priceNew;
	private double priceLast;
	private String description;

	public Product(int id, int category_id, String name, String imgSrc, double priceNew, double priceLast,
			String description) {
		super();
		this.id = id;
		this.category_id = category_id;
		this.name = name;
		this.imgSrc = imgSrc;
		this.priceNew = priceNew;
		this.priceLast = priceLast;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImgSrc() {
		return imgSrc;
	}

	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}

	public String getPriceNew() {
		Locale lc = new Locale("nv","VN");
		NumberFormat nf = NumberFormat.getInstance(lc);
		return nf.format(priceNew);
	}

	public void setPriceNew(double priceNew) {
		this.priceNew = priceNew;
	}

	public String getPriceLast() {
		Locale lc = new Locale("nv","VN");
		NumberFormat nf = NumberFormat.getInstance(lc);
		return nf.format(priceLast);
	}

	public void setPriceLast(double priceLast) {
		this.priceLast = priceLast;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

//	public static void main(String[] args) {
//		Locale lc = new Locale("nv","VN");
//		NumberFormat nFormat = NumberFormat.getInstance(lc);
//		System.out.println(nFormat.format(10000) + "VND");
//	}

}
