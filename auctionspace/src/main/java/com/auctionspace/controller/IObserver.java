package com.auctionspace.controller;

public interface IObserver {
	
	//public void update(String message);

	void update(String bidOwnerEmail, String itemName, float bidAmount);

	//public void update(String bidOwnerEmail, ItemsModel Item);

}
