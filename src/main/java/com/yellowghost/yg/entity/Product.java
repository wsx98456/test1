package com.yellowghost.yg.entity;
import java.sql.Date;

public class Product {
	    private long id;
	    private String model;//4
	    private String category=""; //1
	    private String name; //2
	    private int inventory=0; //5
	    private int safe_inventory=0; //6
	    private Date rel_date;//9
	    private Date dis_date;//11
		private int price=0;//7	  
	    private String brand="";//3
	    private int dis_price=0;//10
        private String path;//8
        private int purchase=1;
        private int index=0;
    
	    /* getters and setters */
	    public long getId(){
	            return id;
	    }
	    public void setId(long id){
	    	this.id = id;
	    }

	    public int getSafe_inventory() {
			return safe_inventory;
		}
		public void setSafe_inventory(int safe_inventory) {
			this.safe_inventory = safe_inventory;
		}
		public Date getRel_date() {
			return rel_date;
		}
		public void setRel_date(Date rel_date) {
			this.rel_date = rel_date;
		}
		public Date getDis_date() {
			return dis_date;
		}
		public void setDis_date(Date dis_date) {
			this.dis_date = dis_date;
		}
	    public String getCategory(){
	            return category;
	    }
	    public void setCategory(String category){
	        this.category = category;
	    }
	    
	    public String getName(){
	        return name;
	    }
	    public void setName(String name){
	    	this.name = name;
	    }

	    public int getInventory(){
	    		return inventory;
	    }
	    public void setInventory(int inventory){
			this.inventory += inventory;
	    }
	    

	    public String getPath(){
	    	return path;
	    }
	    public void setPath(String path){
	    	this.path=path;	
	    }
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
	
		public String getBrand() {
			return brand;
		}
		public void setBrand(String brand) {
			this.brand = brand;
		}
		public String getModel() {
			return model;
		}
		public void setModel(String model) {
			this.model = model;
		} 
	
		public Date getSales_date() {
			return rel_date;
		}

		public int getDis_price() {
			return dis_price;
		}
		public void setDis_price(int dis_price) {
			this.dis_price = dis_price;
		}
		public int getPurchase() {
			return purchase;
		}
		public void setPurchase(int purchase) {
			this.purchase = purchase;
		}
		public void clearpuch(){
			this.purchase=0;
		}
		public int getIndex() {
			return index;
		}
		public void setIndex(int index) {
			this.index = index;
		}
		
}
