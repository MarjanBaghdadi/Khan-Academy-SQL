--Create your own store! Your store should sell one type of things, like clothing or bikes, 
--whatever you want your store to specialize in. You should have a table for all the items in your store, 
--and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, 
--and use select statements to order your items by price and show at least one statistic about the items.




CREATE TABLE store(id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, price INTEGER, condition TEXT);

INSERT INTO store VALUES(1, "white shirt", 10, 10, "GOOD");
INSERT INTO store VALUES(2, "black shirt", 10, 10, "GOOD");
INSERT INTO store VALUES(3, "blue jeans", 50 , 20, "BAD");
INSERT INTO store VALUES(4, "black jeans", 25, 20, "EXCELLENT");
INSERT INTO store VALUES(5, "pink shirt", 10, 10, "EXCELLENT");
INSERT INTO store VALUES(6, "blue shirt", 5, 10, "BAD");
INSERT INTO store VALUES(7, "grey jacket", 30, 100, "GOOD");
INSERT INTO store VALUES(8, "green dress", 3, 45, "GOOD");
INSERT INTO store VALUES(9, "yellow shorts", 10, 12, "BAD");
INSERT INTO store VALUES(10, "purple shorts", 10, 12, "EXCELLENT");
INSERT INTO store VALUES(11, "creme blazer", 5, 40, "EXCELLENT");
INSERT INTO store VALUES(12, "black clazer", 15, 40, "GOOD");
INSERT INTO store VALUES(13, "black dress", 20, 50, "BAD");
INSERT INTO store VALUES(14, "white dress", 20, 50, "BAD");
INSERT INTO store VALUES(15, "red dress", 20, 50, "EXCELLENT");

SELECT * FROM store ORDER BY price;

SELECT SUM(quantity) FROM store;

