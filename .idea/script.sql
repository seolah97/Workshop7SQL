CREATE DATABASE workshop-Seven;

// Table 1: dealerships

CREATE TABLE dealerships(
    id int,
    name varchar(50),
    address varchar(50)
    phone varchar(12),
    PRIMARY KEY (id)
);

// Table 2: vehicles

CREATE TABLE vehicles(
    VIN varchar(17),
    sold BOOLEAN,
    PRIMARY KEY (VIN)
);

// Table 3: inventory (track which dealerships has the vehicle)

CREATE TABLE inventory(
    dealershipsId int,
    VIN varchar(17)
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

INSERT INTO dealerships(id, name, address, phone)
	VALUES(1, 'Haloes Auto Gallery', '845 Poppy Ave', 704-584-6487);
	VALUES(2, 'Section 8 Motors', '642 Sycamore St', 704-881-5032);
    VALUES(3, 'SmartChoice Automotive', '845 Poppy Ave.', 704-927-8460);




