CREATE TABLE SCOTT.POSITION(
    id INTEGER NOT NULL PRIMARY KEY,
    position_name VARCHAR2(255),
    duties RAW(2000)
);

CREATE TABLE SCOTT.EMPLOYEE
( id integer NOT NULL PRIMARY KEY,
  full_name VARCHAR2(255) NOT NULL,
  age INTEGER,
  photo BLOB,
  position_id INTEGER NOT NULL,
  CONSTRAINT fk_position
    FOREIGN KEY (position_id)
    REFERENCES position(id)
);

CREATE TABLE SCOTT.CHARACTERISTIC(
    id INTEGER NOT NULL PRIMARY KEY,
    description RAW(2000),
    employee_id INTEGER NOT NULL ,
    CONSTRAINT fk_employee
    FOREIGN KEY (employee_id)
    REFERENCES employee(id)
);
