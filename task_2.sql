
CREATE TABLE authors (author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(215) NOT NULL
);


CREATE TABLE books (book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(130) NOT NULL,
author_id INT,
price double NOT NULL,
publication_date DATE,
FOREIGN KEY (author_id) REFERENCES Authors(author_id));


CREATE TABLE customers (customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) UNIQUE,
price double NOT NULL,
address TEXT
);

CREATE TABLE orders (order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);



CREATE TABLE order_details (orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(130) NOT NULL,
order_id INT,
book_id INT,
quantity DOUBLE NOT NULL,
FOREIGN KEY (book_id) REFERENCES Books(book_id),
FOREIGN KEY (order_id) REFERENCES Orders(order_id));




