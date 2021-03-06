CREATE TABLE Items (
	item_id INT NOT NULL AUTO_INCREMENT, 
	item_display_name VARCHAR(500) NOT NULL, 
	price FLOAT, quantity INT, 
	start_time DATE, 
	end_time DATE, 
	seller VARCHAR(500) NOT NULL, 
	location VARCHAR(100), 
	description VARCHAR(1000),
	image_path VARCHAR(1000),
	status VARCHAR(15),
	PRIMARY KEY(item_id)
);
	
CREATE TABLE User (
	fname varchar(25),
	mname varchar(25),
	lname varchar(25),
	emailId varchar(30),
	username varchar(40),
	password varchar(40),
	phone int,
	address varchar(50),
	userType varchar(10),
	PRIMARY KEY(username)
);

CREATE TABLE bid (
	bid_id int NOT NULL AUTO_INCREMENT,
	bid_amount float,
	username varchar(40),
	item_id int,
	PRIMARY KEY (bid_id),
	FOREIGN KEY (username) REFERENCES user (username),
	FOREIGN KEY (item_id) REFERENCES items (item_id)
);

CREATE TABLE Registered_Users (
	fname varchar(25),
	emailId varchar(30),
	item_id INT
);

SET GLOBAL event_scheduler = ON;
delimiter |

CREATE EVENT changeStatus
    ON SCHEDULE
		EVERY 5 SECOND
    DO
		BEGIN
			UPDATE ssdiproject.items SET status = 'Closed' where status NOT LIKE '%Stopped%' and end_time + interval 1 day = curdate();
			UPDATE ssdiproject.items SET status = 'Active' where (start_time < curdate() or start_time = curdate()) and status LIKE '%Inactive%';

	END |
delimiter ;