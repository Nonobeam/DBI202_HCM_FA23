CREATE TABLE Customers (
  custID varchar(50),
  custName nvarchar(100),
  custAddress nvarchar(200),
  PRIMARY KEY (custID)
  
);

CREATE TABLE ROOMS (
  roomID varchar(50),
  roomPrice MONEY,
  PRIMARY KEY (roomID)
);

CREATE TABLE SERVICES (
  serviceID varchar(50),
  serviceName nvarchar(100),
  servicePrice MONEY
  PRIMARY KEY (serviceID)
);

CREATE TABLE CONTRACTS(
    contractID varchar(50),
	quantity INT
	PRIMARY KEY (contractID)
)

