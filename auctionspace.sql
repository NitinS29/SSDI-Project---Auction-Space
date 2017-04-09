CREATE TABLE Items 
	(item_id INT NOT NULL AUTO_INCREMENT, 
	item_display_name VARCHAR(500) NOT NULL, 
	price FLOAT, quantity INT, 
	start_time DATE, 
	end_time DATE, 
	seller VARCHAR(500) NOT NULL, 
	location VARCHAR(100), 
	description VARCHAR(1000), 
	PRIMARY KEY(item_id));
	
CREATE TABLE User (
	fname varchar(25),
	mname varchar(25),
	lname varchar(25),
	emailId varchar(30),
	username varchar(40),
	password varchar(40),
	phone int,
	address varchar(50),
	userType varchar(10)
);

CREATE TABLE Registered_Users (
	fname varchar(25),
	emailId varchar(30),
	item_id INT
);