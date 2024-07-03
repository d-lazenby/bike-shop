CREATE TABLE bikes(
    bike_id SERIAL PRIMARY KEY,
    type VARCHAR(30) NOT NULL,
    size INT NOT NULL
);

CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    phone VARCHAR(20) NOT NULL,
    name VARCHAR(40) NOT NULL
);

CREATE TABLE rentals(
    rental_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    bike_id INT NOT NULL,
    date_rented DATE DEFAULT NOW(),
    date_returned DATE
);

ALTER TABLE rentals ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id);
ALTER TABLE rentals ADD FOREIGN KEY(bike_id) REFERENCES bikes(bike_id);