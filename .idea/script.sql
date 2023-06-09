CREATE DATABASE workshop-Seven;

// Table 1: dealerships

CREATE TABLE dealerships(
    id int AUTO_INCREMENT NOT NULL,
    name varchar(50),
    address varchar(50)
    phone varchar(12),
    PRIMARY KEY (id)
);

// Table 2: vehicles

CREATE TABLE vehicles(
    VIN string varchar(17) NOT NULL,
    sold BOOLEAN,
    PRIMARY KEY (VIN)
);

// Table 3: inventory (track which dealerships has the vehicle)

CREATE TABLE inventory(
    dealershipsId int,
    VIN string
);

// Table 4: sales contracts

CREATE TABLE salesContracts(
    id int AUTO_INCREMENT NOT NULL,
    FOREIGN KEY (VIN)
);

// Table 5: (optional) lease contracts

CREATE TABLE leaseContracts (
    id int AUTO_INCREMENT NOT NULL,
    FOREIGN KEY (VIN)
);




