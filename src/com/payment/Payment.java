package com.payment;

public class Payment {
    private int id;
    private String name;
    private String phone;
    private String itemID;
    private double bidPrice;
    private String address;
    private String payType;
    private String cardNo;
    private String bidDate;
    private String cvCode;
    
   
    public Payment(int id, String name, String phone, String itemID, double bidPrice, String address, String payType, String cardNo, String bidDate, String cvCode){
	this.id = id;
	this.name = name;
	this.phone = phone;
	this.itemID = itemID;
	this.bidPrice = bidPrice;
	this.address = address;
	this.bidDate = bidDate;
	this.payType = payType;
	this.cardNo = cardNo;
	this.bidDate = bidDate;
	this.cvCode = cvCode;
    }


	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getPhone() {
		return phone;
	}


	public String getItemID() {
		return itemID;
	}


	public double getBidPrice() {
		return bidPrice;
	}


	public String getAddress() {
		return address;
	}


	public String getPayType() {
		return payType;
	}


	public String getCardNo() {
		return cardNo;
	}


	public String getBidDate() {
		return bidDate;
	}


	public String getCvCode() {
		return cvCode;
	}
    
    
}  

	    