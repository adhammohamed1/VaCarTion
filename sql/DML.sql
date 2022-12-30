-- password is = 123 but $2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq in bcrypt

-- generate values to insert into the admin table
INSERT INTO admin VALUES ('admin@gmail.com','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq');

-- generate values to insert into the credit_card table
INSERT INTO credit_card VALUES ('0234567890123456', 'Farid Mohamed', '123', '2023-06-15');
INSERT INTO credit_card VALUES ('1234567890123457', 'Ashraf Yousef', '345', '2023-08-15');
INSERT INTO credit_card VALUES ('2234567890123458', 'Hossam Elshamy', '156', '2023-09-15');
INSERT INTO credit_card VALUES ('3234567890123459', 'Yousef Ashraf', '466', '2023-10-15');
INSERT INTO credit_card VALUES ('4234567890123460', 'Adham Mohamed', '854', '2023-11-15');
INSERT INTO credit_card VALUES ('5234567890123461', 'Mohamed Farid', '233', '2023-12-15');



-- generate values to insert into the customer table
INSERT INTO customer (ssn, fname, lname, email, phone_no, password) VALUES('123456','Farid','Mohamed','farid@gmail.com','01012345678','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq');
INSERT INTO customer (ssn, fname, lname, email, phone_no, password) VALUES('234567','Ashraf','Yousef','ashraf@gmail.com','01123456789','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq');
INSERT INTO customer (ssn, fname, lname, email, phone_no, password) VALUES('345678','Hossam','Elshamy','hossam@gmail.com','01234567890','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq');
INSERT INTO customer (ssn, fname, lname, email, phone_no, password) VALUES('456789','Yousef','Ashraf','yousef@gmail.com','01512345678','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq');
INSERT INTO customer (ssn, fname, lname, email, phone_no, password) VALUES('567890','Adham','Mohamed','domziano@gmail.com','01623456789','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq');
INSERT INTO customer (ssn, fname, lname, email, phone_no, password) VALUES('678901','Mohamed','Farid','mohamed@gmail.com','01734567890','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq');

-- generate credit card to customer
INSERT INTO customer_credit(ssn, card_no) VALUES ('123456','0234567890123456');
INSERT INTO customer_credit(ssn, card_no) VALUES ('234567','1234567890123457');
INSERT INTO customer_credit(ssn, card_no) VALUES ('345678','2234567890123458');
INSERT INTO customer_credit(ssn, card_no) VALUES ('456789','3234567890123459');
INSERT INTO customer_credit(ssn, card_no) VALUES ('567890','4234567890123460');
INSERT INTO customer_credit(ssn, card_no) VALUES ('678901','5234567890123461');

-- generate values to insert into the office table
INSERT INTO office (name, email, phone_no, password, country, city, building_no) VALUES('Limozin Gold','limozin@gold.com','01532345678','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','Egypt','Cairo','1');
INSERT INTO office (name, email, phone_no, password, country, city, building_no) VALUES('El AML','aml@forreal.com','01123456289','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','Egypt','Alexandria','2');
INSERT INTO office (name, email, phone_no, password, country, city, building_no) VALUES('Safe Ride Office','contact@saferide.com', '01158456289','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','Egypt','Giza','3');
INSERT INTO office (name, email, phone_no, password, country, city, building_no) VALUES('Lambo office','lambo@lambo.com','01512345698','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','Egypt','Cairo','4');
INSERT INTO office (name, email, phone_no, password, country, city, building_no) VALUES('Trust Limo','trust@gmail.com','01623456389','$2b$10$rVf5FqeP7PkC0Qj6No0sbONn7zQyZH0Z2l871rFA4IFPg9Iyo1EIq','Egypt','Giza','5');



-- generate values to insert into the car table
INSERT INTO car (plate_id, model, make, year, price, office_id) VALUES('12345678','Audi','A4','2019','10','1');
INSERT INTO car (plate_id, model, make, year, price, office_id) VALUES('23456789','BMW','X5','2018','15','2');
INSERT INTO car (plate_id, model, make, year, price, office_id) VALUES('34567890','Mercedes','C200','2017','5','3');
INSERT INTO car (plate_id, model, make, year, price, office_id) VALUES('45678901','Audi','A6','2016','7.5','4');
INSERT INTO car (plate_id, model, make, year, price, office_id) VALUES('56789012','BMW','X6','2015','2.5','5');


-- generate values to insert into the car_photo table
INSERT INTO car_photos (plate_id, photo) VALUES('12345678','https://gearkhana.com/wp-content/uploads/2019/06/A157415_small.jpg');
INSERT INTO car_photos (plate_id, photo) VALUES('23456789','https://www.elbalad.news/Upload/libfiles/964/6/302.png');
INSERT INTO car_photos (plate_id, photo) VALUES('34567890','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdhsugUJ8iDiY9QKoIBTecKVH9WlpMri-NbZOiLPhc&s');
INSERT INTO car_photos (plate_id, photo) VALUES('45678901','https://media.ed.edmunds-media.com/audi/a6/2016/fe/2016_audi_a6_f34_fe_208161_717.jpg');
INSERT INTO car_photos (plate_id, photo) VALUES('56789012','https://ymimg1.b8cdn.com/system/uploads/4104/original/2015-bmw-x6_100468788_h.jpg?1409246727');


-- generate values to insert into the car_status table
INSERT INTO car_status (plate_id) VALUES('12345678');
INSERT INTO car_status (plate_id) VALUES('23456789');
INSERT INTO car_status (plate_id) VALUES('34567890');
INSERT INTO car_status (plate_id) VALUES('45678901');
INSERT INTO car_status (plate_id) VALUES('56789012');


-- generate values to insert into the reservation table
INSERT INTO reservation (ssn, plate_id, pickup_date, return_date) VALUES('123456','12345678','2022-12-28','2022-12-30');
INSERT INTO reservation (ssn, plate_id, pickup_date, return_date) VALUES('234567','23456789','2022-12-28','2022-12-30');
INSERT INTO reservation (ssn, plate_id, pickup_date, return_date) VALUES('345678','34567890','2022-12-28','2022-12-30');
INSERT INTO reservation (ssn, plate_id, pickup_date, return_date) VALUES('456789','45678901','2022-12-28','2022-12-30');
INSERT INTO reservation (ssn, plate_id, pickup_date, return_date) VALUES('567890','56789012','2022-12-28','2022-12-30');

