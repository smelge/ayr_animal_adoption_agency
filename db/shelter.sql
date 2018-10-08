DROP TABLE IF EXISTS adoptions;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS customers;
-- DROP TABLE IF EXISTS training_log;
-- DROP TABLE IF EXISTS training;
-- DROP TABLE IF EXISTS staff;


CREATE TABLE animals(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  species VARCHAR(255),
  age INT2,
  arrival_date DATE,
  photo VARCHAR(255)
);

CREATE TABLE customers(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE adoptions(
  id SERIAL8 PRIMARY KEY,
  animal_id INT8 REFERENCES animals(id),
  customer_id INT8 REFERENCES customers(id),
  adopt_date DATE DEFAULT CURRENT_DATE
);
--
-- CREATE TABLE training(
--   id SERIAL8 PRIMARY KEY,
--   type VARCHAR(50),
--   training VARCHAR(255)
-- );
--
-- CREATE TABLE staff(
--   id SERIAL8 PRIMARY KEY,
--   first_name VARCHAR(255),
--   last_name VARCHAR(255)
-- );
--
-- CREATE TABLE training_log(
--   id SERIAL8 PRIMARY KEY,
--   animal_id INT8 REFERENCES animals(id),
--   staff_id INT8 REFERENCES staff(id),
--   training_id INT8 REFERENCES training(id),
--   completed DATE DEFAULT CURRENT_DATE
-- );
