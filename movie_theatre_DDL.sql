CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    age INTEGER,
    email VARCHAR(50),
    premium BOOLEAN
);

CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30)
);

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(50),
    director VARCHAR(50),
    movie_description VARCHAR(100),
    duration INTEGER
);

CREATE TABLE concessions(
    concessions_id SERIAL PRIMARY KEY,
    staff_id INTEGER,
    customer_id INTEGER,
    price NUMERIC(8,2),
    item VARCHAR(30),
    quantity INTEGER,
    FOREIGN KEY(staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    movie_id INTEGER,
    customer_id INTEGER,
    staff_id INTEGER,
    seat INTEGER,
    theatre INTEGER,
    price NUMERIC(8,2),
    ticket_date DATE,
    FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(staff_id) REFERENCES staff(staff_id)
);