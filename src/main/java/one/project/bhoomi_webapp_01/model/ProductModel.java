package one.project.bhoomi_webapp_01.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.apache.commons.fileupload.MultipartStream;
import org.hibernate.validator.constraints.NotEmpty;

@Entity


public class ProductModel {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	public
	int id;
	@NotEmpty(message="required")
	String name;
	@NotNull(message="required")
	int price;
	@NotEmpty(message="required")
	String desc;
	@NotEmpty(message="requried")
	String pic;
	@NotEmpty(message="required")
	String Supplier;
	@Transient
	MultipartStream file;
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
	
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	
	public MultipartStream getFile() {
		return file;
	}
	public void setFile(MultipartStream file) {
		this.file = file;
	}
	@Override
	public String toString() {
		return "ProductModel [id=" + id + ", name=" + name + ", price=" + price + ", desc=" + desc + ", Supplier="
				+ Supplier + "]";
	}
	
}