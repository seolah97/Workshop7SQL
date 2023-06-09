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





