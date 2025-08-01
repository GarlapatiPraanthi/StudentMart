PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE alembic_version (
	version_num VARCHAR(32) NOT NULL, 
	CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num)
);
INSERT INTO alembic_version VALUES('494e0c027429');
CREATE TABLE user (
	id INTEGER NOT NULL, 
	username VARCHAR(20) NOT NULL, 
	email VARCHAR(100) NOT NULL, 
	password VARCHAR(60) NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (username), 
	UNIQUE (email)
);
INSERT INTO user VALUES(1,'Pranathi','garlapatipranathi136@gmail.com','$2b$12$KIoGB1wsAt6gag3FWQ5IROtzNwemOrEuwTlxmhgV8fKJZw1h7ZJBC');
INSERT INTO user VALUES(2,'pavana','pavanaharshitha29@gmail.com','$2b$12$kCehs6vmjpab1BrcRecP7OpwoZql/KiPn5/4ORiHrS3vPvAgstm2e');
INSERT INTO user VALUES(3,'keerthana','bitrakeerthana@gmail.com','$2b$12$.Za10KKc7lTWbM1yhFdqK.JhonkGI6IaK6ZdS1TIiU1OQ4aZVGHyq');
INSERT INTO user VALUES(4,'Rani','harshitha29517@gmail.com','$2b$12$0oddlOhvFmqaDElNYLd8cOfoZYwagapY4rDp1c7ABi5VjFagHW0Y.');
CREATE TABLE admin (
	id INTEGER NOT NULL, 
	username VARCHAR(50) NOT NULL, 
	password VARCHAR(200) NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (username)
);
INSERT INTO admin VALUES(1,'studentmart','$2b$12$RAtJUUrYcxQ0hsezuIGmtetbxxuJ5FZqn68T2ABDzZwq2PzmZMPlO');
CREATE TABLE orphanage (
	id INTEGER NOT NULL, 
	orphanage_name VARCHAR(255) NOT NULL, 
	email VARCHAR(100) NOT NULL, 
	mobile VARCHAR(20) NOT NULL, 
	state VARCHAR(100) NOT NULL, 
	city VARCHAR(100) NOT NULL, 
	pincode VARCHAR(10) NOT NULL, 
	address TEXT, 
	orphanage_type VARCHAR(100) NOT NULL, 
	PRIMARY KEY (id)
);
CREATE TABLE listing (
	id INTEGER NOT NULL, 
	title VARCHAR(255) NOT NULL, 
	category VARCHAR(100) NOT NULL, 
	author VARCHAR(255), 
	purchased_date VARCHAR(50), 
	price FLOAT NOT NULL, 
	ad_description TEXT, 
	name VARCHAR(255) NOT NULL, 
	mobile VARCHAR(10) NOT NULL, 
	city VARCHAR(100) NOT NULL, 
	images VARCHAR(500), 
	user_id INTEGER NOT NULL, 
	sold BOOLEAN NOT NULL, 
	PRIMARY KEY (id), 
	FOREIGN KEY(user_id) REFERENCES user (id)
);
INSERT INTO listing VALUES(1,'Algorithms to Live','books','Brian Christian and Tom Griffiths','2018',250.0,'Algorithms to live by possesses the two qualities that are key for a good book; an amusing factor and meaning. The book manages to keep you entertained while he walks you through a more efficient method of thinking.','Pavana','9866513523','Guntur','a1.jpg',2,0);
INSERT INTO listing VALUES(2,'Data Structures And Algorithms Made Easy','books',' Narasimha Karumanchi','2016',250.0,replace(replace('Publisher ΓÇÅ : ΓÇÄ Careermonk Publications; Fifth edition (1 January 2016); CareerMonk Publications\r\nLanguage ΓÇÅ : ΓÇÄ English\r\nPaperback ΓÇÅ : ΓÇÄ 453 pages','\r',char(13)),'\n',char(10)),'Pavana','9866513523','Guntur','a8.jpg',2,1);
INSERT INTO listing VALUES(3,'AB-82MS 240 Functions and 2-Line Display Scientific Calculator','calculators','','2024',400.0,'Advanced Functionality: Equipped with 240 functions, including stat-data editor and fractions calculations, it handles complex mathematical operations effortlessly including roots, n-th roots, percentages, complex numbers, permutations, linear regression, standard deviations, and variable solving','Pavana','9866513523','Guntur','a6.jpg',2,0);
INSERT INTO listing VALUES(4,'Casio FX-991ES Plus-2nd Edition Scientific Calculator','calculators','','2024',450.0,'Redesigned ES PLUS series calculators featuring easy-to-understand Natural Textbook Display, Non-Programmable Scientific Calculator with 417 Functions','Pranathi','5605605605','Kadapa','a3.jpg',1,1);
INSERT INTO listing VALUES(5,'Lab Coat Apron with Full Sleeves for  Students','labessentials','','2025',400.0,'Whether youΓÇÖre a doctor, a scientist, a dentist or any other type of professional that wears a lab coat, this standard bright white coat will perfectly suit your needs. ','Pranathi','5605605605','Kadapa','a4.jpg',1,0);
INSERT INTO listing VALUES(6,'The C Programming Language','books','Dennis Ritchie','2014',250.0,'About The BookC Programming Language 2nd Edition is a book that gives you just what you need to know about this powerful programming language.','Pranathi','5605605605','Kadapa','a7.jpg',1,0);
INSERT INTO listing VALUES(7,'Data Structures And Algorithms Made Easy','books',' Narasimha Karumanchi ','2018',220.0,'Data Structures and Algorithms Made Easy is a good book to learn about different data structures and time complexities.It is helpful for beginner.','Pranathi','5605605605','Kadapa','a8.jpg',1,0);
INSERT INTO listing VALUES(8,' Mini Drafter, Sheet Holder Box','labessentials','','2025',450.0,'Weight for Better Grip (Transparent).thick die casted, unbreakable scale along with cover provided','keerthana','5245245245','Tenali','a5.jpg',3,0);
INSERT INTO listing VALUES(9,'Data Structure and Algorithms in Java','books','Narasimha Karumanchi','2019',270.0,'Data Structure and Algorithms in Java: From Basics to Expert Proficiency" is a comprehensive guide meticulously crafted for beginners and seasoned programmers alike.','Keerthana','5245245245','Tenali','a9.jpg',3,0);
INSERT INTO listing VALUES(10,'Beginner Guide to DSA using C','books','Dennis Ritchie','2018',240.0,'C is the most fundamental programming language.This book helps to achieve strong fundamentals in C programming language','Rani','5175175175','Vijayawada','a11.jpg',4,0);
CREATE TABLE donation (
	id INTEGER NOT NULL, 
	first_name VARCHAR(100) NOT NULL, 
	last_name VARCHAR(100) NOT NULL, 
	email VARCHAR(100) NOT NULL, 
	mobile VARCHAR(20) NOT NULL, 
	state VARCHAR(20), 
	pincode VARCHAR(10) NOT NULL, 
	address TEXT NOT NULL, 
	landmark VARCHAR(255) NOT NULL, 
	city VARCHAR(100) NOT NULL, 
	approx_books INTEGER NOT NULL, 
	carton_boxes INTEGER, 
	categories TEXT, 
	terms_accepted BOOLEAN, 
	user_id INTEGER NOT NULL, 
	orphanage_id INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(user_id) REFERENCES user (id), 
	FOREIGN KEY(orphanage_id) REFERENCES orphanage (id)
);
CREATE TABLE wishlist (
	id INTEGER NOT NULL, 
	user_id INTEGER NOT NULL, 
	product_id INTEGER NOT NULL, 
	PRIMARY KEY (id), 
	FOREIGN KEY(user_id) REFERENCES user (id), 
	FOREIGN KEY(product_id) REFERENCES listing (id)
);
CREATE TABLE cart (
	id INTEGER NOT NULL, 
	user_id INTEGER NOT NULL, 
	product_id INTEGER NOT NULL, 
	PRIMARY KEY (id), 
	FOREIGN KEY(user_id) REFERENCES user (id), 
	FOREIGN KEY(product_id) REFERENCES listing (id)
);
COMMIT;
