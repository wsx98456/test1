package com.yellowghost.yg.entity;

import java.util.ArrayList;
import java.util.List;
import com.yellowghost.yg.dao.ProductDAO;
import com.yellowghost.yg.entity.Product;

//using List<Product> to store product
//Can't do any id change.
public class ShoppingBean implements ProductDAO{
	private List<Product> productList2 = new ArrayList<Product>();
	private int Memid;
	public ShoppingBean() {
	}

	public List<Product> getList() {
		return productList2;
	}

	public void insert(Product a) {
		Product pr = new Product();
		pr.setIndex(productList2.size());
		pr.setId(a.getId());
		pr.setDis_date(a.getDis_date());
		pr.setRel_date(a.getRel_date());
		pr.setDis_price(a.getDis_price());
		pr.setPath(a.getPath());
		pr.setModel(a.getModel());
		pr.setPrice(a.getPrice());
		pr.setCategory(a.getCategory());
		pr.setName(a.getName());
		pr.setInventory(a.getInventory());
		pr.setSafe_inventory(a.getSafe_inventory());
		pr.setBrand(a.getBrand());
		productList2.add(pr);
	}

	public Product get(long id) {
		Product p = new Product();
		for (int i = 0; i < productList2.size(); i++) {
			if (productList2.get(i).getIndex() == id) {
				p = productList2.get(i);
			}
		}
		return p;
	}

	public void update(Product aProduct) {
		int id = (int) aProduct.getIndex();
		productList2.set(id, aProduct);
	}

	public void delete(long id) {
		for (int i = 0; i < productList2.size(); i++) {
			if (productList2.get(i).getIndex() == id) {
				productList2.remove(i);
			break;
			}
		}
		for (int j = 0; j< productList2.size(); j++){
			productList2.get(j).setIndex(j);
		}	
	}

	public int count() {
		return productList2.size();
	}

	public int total() {
		int to = 0;
		for (int i = 0; i < productList2.size(); i++) {
			to = to + (productList2.get(i).getDis_price()*productList2.get(i).getPurchase());
		}
		return to;
	}
	
	public void cleanup(){
		this.getList().clear();
		
	}

	@Override
	public List<Product> getReorderList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getAvailableList() {
		// TODO Auto-generated method stub
		return null;
	}

	public int getMemid() {
		return Memid;
	}

	public void setMemid(int memid) {
		Memid = memid;
	}
}
