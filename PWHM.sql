CREATE DATABASE warehouse;

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE suppliers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact_name VARCHAR(255),
    contact_email VARCHAR(255),
    contact_phone VARCHAR(255)
);

CREATE TABLE inventory (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(id),
    supplier_id INTEGER REFERENCES suppliers(id),
    quantity INTEGER NOT NULL,
    restock_threshold INTEGER,
    restock_date DATE
);

INSERT INTO products (name, description, price) VALUES ('Product 1', 'Description for Product 1', 100.00);
INSERT INTO products (name, description, price) VALUES ('Product 2', 'Description for Product 2', 150.00);

INSERT INTO suppliers (name, contact_name, contact_email, contact_phone) VALUES ('Supplier 1', 'Contact 1', 'contact1@example.com', '123-456-7890');
INSERT INTO suppliers (name, contact_name, contact_email, contact_phone) VALUES ('Supplier 2',
