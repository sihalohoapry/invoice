package net.apry.invoicebe.dto;

public class Invoice {
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNo_hp() {
		return no_hp;
	}
	public void setNo_hp(String no_hp) {
		this.no_hp = no_hp;
	}
	public double getTotal_harga() {
		return total_harga;
	}
	public void setTotal_harga(double total_harga) {
		this.total_harga = total_harga;
	}
	public double getOngkir() {
		return ongkir;
	}
	public void setOngkir(double ongkir) {
		this.ongkir = ongkir;
	}
	public double getTotal_seluruh() {
		return total_seluruh;
	}
	public void setTotal_seluruh(double total_seluruh) {
		this.total_seluruh = total_seluruh;
	}
	private int id;
	private String name;
	private String address;
	private String no_hp;
	private double total_harga;
	private double ongkir;
	private double total_seluruh;

}
