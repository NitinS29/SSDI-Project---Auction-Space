package com.auctionspace.model;

public class AuctionModel {
	private int itemId;
	private String fname;
	private String emailId;
	
	public AuctionModel(int itemId, String fname, String emailId) {
		this.itemId = itemId;
		this.fname = fname;
		this.emailId = emailId;
	}
	
	public AuctionModel() {}
	
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
}
