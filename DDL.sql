CREATE SCHEMA `car-rental-system`;
USE `car-rental-system`;

CREATE TABLE customer (
    ssn CHAR(6),
    fname VARCHAR(32) NOT NULL,
    lname VARCHAR(32) NOT NULL,
    email VARCHAR(64) UNIQUE NOT NULL,
    phone_no CHAR(11) UNIQUE NOT NULL,
    password VARCHAR(256) NOT NULL,
    wallet REAL DEFAULT 0,
    card_no CHAR(16),
    CONSTRAINT customer_pk PRIMARY KEY (ssn)
    CONSTRAINT customer_credit_card_fk FOREIGN KEY (card_no) REFERENCES credit_card(card_no)
);

CREATE TABLE credit_card(
    card_no CHAR(16),
    holder_name VARCHAR(64) NOT NULL,
    cvv CHAR(3) NOT NULL,
    exp_date DATE NOT NULL,
    CONSTRAINT credit_card_pk PRIMARY KEY (card_no)
);

CREATE TABLE customer_credit(
    ssn CHAR(6),
    card_no CHAR(16),
    CONSTRAINT customer_credit_pk PRIMARY KEY (ssn, card_no),
    CONSTRAINT customer_credit_customer_fk FOREIGN KEY (ssn) REFERENCES customer(ssn),
    CONSTRAINT customer_credit_card_fk FOREIGN KEY (card_no) REFERENCES credit_card(card_no)
);

CREATE TABLE office(
    office_id INT AUTO_INCREMENT,
    name VARCHAR(32) NOT NULL,
    email VARCHAR(64) UNIQUE NOT NULL,
    phone_no CHAR(11) UNIQUE NOT NULL,
    password VARCHAR(256) NOT NULL,
    country VARCHAR(64) NOT NULL,
    city VARCHAR(64) NOT NULL,
    building_no VARCHAR(16) NOT NULL,
    CONSTRAINT office_pk PRIMARY KEY (office_id)
);

CREATE TABLE car(
    plate_id VARCHAR(8),
    model VARCHAR(32) NOT NULL,
    make VARCHAR(32) NOT NULL,
    year YEAR NOT NULL,
    price REAL NOT NULL,
    office_id INT NOT NULL,
    CONSTRAINT car_pk PRIMARY KEY (plate_id),
    CONSTRAINT car_office_fk FOREIGN KEY (office_id) REFERENCES office(office_id)
);

CREATE TABLE reservation(
    reservation_no INT AUTO_INCREMENT,
    ssn CHAR(6) NOT NULL,
    plate_id VARCHAR(8) NOT NULL,
    reserve_date DATE NOT NULL,
    pickup_date DATE NOT NULL,
    return_date DATE NOT NULL,
    payment_date DATE DEFAULT NULL,
    registration_date DATE DEFAULT GETDATE(),
    CONSTRAINT reservation_pk PRIMARY KEY (reservation_no),
    CONSTRAINT reservation_customer_fk FOREIGN KEY (ssn) REFERENCES customer(ssn),
    CONSTRAINT reservation_car_fk FOREIGN KEY (car_id) REFERENCES car(plate_id)
);

CREATE TABLE car_photos(
    plate_id VARCHAR(8),
    photo VARCHAR(512),
    CONSTRAINT car_photos_pk PRIMARY KEY (plate_id),
    CONSTRAINT car_photos_fk FOREIGN KEY (plate_id) REFERENCES car(plate_id)
);

--- 0-> available, 1-> in maintainance, 2-> rented, 3-> returned
CREATE TABLE car_status(
    plate_id VARCHAR(8),
    status_code SMALLINT,
    status_date DATE,
    CONSTRAINT car_status_pk PRIMARY KEY (plate_id),
    CONSTRAINT car_status_fk FOREIGN KEY (plate_id) REFERENCES car(plate_id)
);