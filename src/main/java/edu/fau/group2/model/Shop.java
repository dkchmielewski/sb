package edu.fau.group2.model;

public class Shop {
	/*
	 This class creates shop objects
	 Declaring variables
	 */	
	private int shop_id;
	private String team_name;
	private String logo;
	private String product;
	
	//Default Constructor 
	public Shop() {
		super();
	}
	
	public Shop(String team_name, String logo, String product, int shop_id) {
		super();
		this.team_name = team_name;
		this.logo = logo;
		this.product = product;
		this.shop_id = shop_id;
	}
	
	public Shop(String team_name, String logo, String product) {
		super();
		this.team_name = team_name;
		this.logo = logo;
		this.product = product;
	}
	
	//Overloaded Constructor
	public Shop(int shop_id, String team_name, String logo, String product) {
		super();
		this.shop_id = shop_id;
		this.team_name = team_name;
		this.logo = logo;
		this.product = product;
	}
	
	//Get shop id
	public int getShop_id() {
		return shop_id;
	}
	
	//Set shop id
	public void setShop_id(int shop_id) {
		this.shop_id = shop_id;
	}
	
	//Get Team name
	public String getTeam_name() {
		return team_name;
	}
	
	//Set team name
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	
	//Get logo
	public String getLogo() {
		return logo;
	}
	
	//Set logo
	public void setLogo(String logo) {
		this.logo = logo;
	}
	
	//Get product link
	public String getProduct() {
		return product;
	}
	
	//Set product link
	public void setProduct(String product) {
		this.product = product;
	}
	
	
}//end class shop

