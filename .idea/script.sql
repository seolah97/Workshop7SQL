CREATE DATABASE workshop-Seven;

// Table 1: dealerships

CREATE TABLE dealerships(
    dealership_Id int,
    name varchar(50),
    address varchar(50),
    phone varchar(12),
    PRIMARY KEY (dealership_Id)
);

// Table 2: vehicles

CREATE TABLE vehicles(
    VIN varchar(17),
    make varchar(12),
    model varchar(12),
    year int,
    color varchar(10),
    sold BOOLEAN,
    PRIMARY KEY (VIN)
);

// Table 3: inventory (track which dealerships has the vehicle)

CREATE TABLE inventory(
    dealershipsId int,
    VIN varchar(17),
    FOREIGN KEY(dealership_Id) REFERENCES Dealerships(dealership_Id),
    FOREIGN KEY(VIN) REFERENCES vehicles(VIN)
);

// Table 4: sales contracts

CREATE TABLE salesContracts(
    id int,
    VIN varchar(17),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

// Table 5: (optional) lease contracts

CREATE TABLE leaseContracts (
      id int,
      VIN varchar(17),
      FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

/// Sample data

INSERT INTO dealerships(id, name, address, phone) VALUES
    (1, 'Haloes Auto Gallery', '845 Poppy Ave', 704-584-6487),
    (2, 'Section 8 Motors', '642 Sycamore St', 704-881-5032),
    (3, 'SmartChoice Automotive', '845 Poppy Ave.', 704-927-8460);

INSERT INTO vehicles(VIN, make, model, year, color, sold) VALUES
	('1HGCM82651A123456', 'Honda', 'Accord', 2010, 'Silver', FALSE),
	('3VWCM82671M987654', 'Volkswagen', 'Jetta', 2015, 'Black', TRUE),
	('JN1DA31A01P987123', 'Nissan', 'Sentra', 2001, 'Blue', TRUE),
	('5XYZC6BH6AG754321', 'Hyundai', 'Santa Fe', 2010, 'Red', TRUE),
	('1GCHK29U43E654789', 'Chevrolet', 'Silverado', 2003, 'White', FALSE),
	('WAUZZZ8K4AA432156', 'Audi', 'A4', 2010, 'Gray', FALSE),
	('KMHDU4ADXAU987654', 'Hyundai', 'Elantra', 2010, 'Silver', FALSE),
	('JTEBU5JR8D5264789', 'Toyota', '4Runner', 2013, 'Black', TRUE),
	('2C3CDXCT5CH123456', 'Chrysler', '300', 2012, 'Red', FALSE),
	('1G1BC5SM4J1234567', 'Chevrolet', 'Malibu', 2018, 'Blue', TRUE);










