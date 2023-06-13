// 1 Get All Dealerships
SELECT * FROM dealerships;

// 2 Find all vehicles for a specific dealership
SELECT * FROM dealerships WHERE id = 2;

// 3 Find a car by VIN
SELECT * FROM vehicles WHERE VIN = '';

// 4 Find the dealership where a certain car is located by VIN
SELECT dealershipsId FROM inventory WHERE VIN = '';

// 5 Find all Dealerships that have a certain car type(i.e. Red Ford Mustang)

// 6 Get all sales info for a specific dealer for a specific date range
SELECT * FROM salesContracts WHERE dateOfPurchase BETWEEN '' AND '';