package one.project.bhoomi_webapp_01.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import one.project.bhoomi_webapp_01.model.User;


@Entity
@Table
public class Cart {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	public
	int cid;
	String name;
	int price;
	String desc;
	String Supplier;
	int qty;
	@OneToOne
	@JoinColumn(name="id")
	private User id;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getSupplier() {
		return Supplier;
	}
	public void setSupplier(String supplier) {
		Supplier = supplier;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public User getId() {
		return id;
	}
	public void setId(User id) {
		this.id = id;
	}

}
