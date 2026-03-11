package pack1;

import java.io.Serializable;

public class ProductBean implements Serializable
{
  private String pCode;
  private String pName;
  private String pCompany;
  private String price;
  private String pQty;
public String getpCode() {
	return pCode;
}
public void setpCode(String pCode) {
	this.pCode = pCode;
}
public String getpName() {
	return pName;
}
public void setpName(String pName) {
	this.pName = pName;
}
public String getpCompany() {
	return pCompany;
}
public void setpCompany(String pCompany) {
	this.pCompany = pCompany;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getpQty() {
	return pQty;
}
public void setpQty(String pQty) {
	this.pQty = pQty;
}
public ProductBean() {
	// TODO Auto-generated constructor stub
}
}
