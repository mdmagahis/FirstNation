-- Create a database for FirstNation Real Estate

set termout on
set feedback on
set termout off
-- set feedback off

create table Branch (
    BranchID        NUMBER(5),
    StreetAddress   VARCHAR(25),
    Suburb/City     VARCHAR(25),
    ZipCode         NUMBER(5),
    PRIMARY KEY (BranchID)
);  
-- Branch Table

INSERT INTO Branch (BranchID, StreetAddress, Suburb/City, ZipCode)
   VALUES (1, '11 Yellow Brick Rd', 'Cerulean City', 12345);

INSERT INTO Branch (BranchID, StreetAddress, Suburb/City, ZipCode)
   VALUES (2, '21 Jump St', 'Veridian City', 54321);

INSERT INTO Branch (BranchID, StreetAddress, Suburb/City, ZipCode)
   VALUES (3, '44 Broken Dreams Blvd', 'Pewter City', 24816);

INSERT INTO Branch (BranchID, StreetAddress, Suburb/City, ZipCode)
   VALUES (4, '1982 Electric Avenue', 'Cerulean City', 12345);

INSERT INTO Branch (BranchID, StreetAddress, Suburb/City, ZipCode)
   VALUES (5, '22 Twain St', 'Saffron City', 16842);

create table Property (
    PropertyID      NUMBER(5),
    Price           NUMBER(5)   CHECK (Price > 0),
    SquareFeet      NUMBER(5),
    PropertyType    VARCHAR(25) CONSTRAINT ValidType
                    CHECK(PropertyType IN ('House', 'Apartments', 'Condominum', 'Commercial')),
    DateListed      DATE(10),
    NoOfBedrooms    NUMBER(5),
    NoOfBathrooms   NUMBER(5),
    StreetAddress   VARCHAR(25),
    Suburb/City     VARCHAR(25),
    ZipCode         NUMBER(5),
    PRIMARY KEY (PropertyID)
);

create table Rental (
    id              NUMBER(5),
    Availability    VARCHAR(1) CONSTRAINT yesNO
                    CHECK(Availability IN ('Y', 'N', 'y', 'n')),
    RentalRate      NUMBER(5)    CHECK (RentalRate > 0),    
    CONSTRAINT fk_property 
        FOREIGN KEY (PropertyID)
        REFERENCES Property(PropertyID)
);

INSERT INTO Rental (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (3, 159000, 1800, 'Condominium', 11-Jun-16, 2, 1.5, '64 Penny Ln', 'Saffron City', 16842, y, 2200);
   
INSERT INTO Rental (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (5, 1400, 995, 'Apartment', 24-MAY-16, 2, 2, '1984 34th St', 'Cerulean City', 12345, Y, 1600);
   
INSERT INTO Rental (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (8, 254000, 1950, 'Condominium', 24-Oct-15, 3, 1.5, '1600 Pennsylvania Ln', 'Veridian City', 54323, Y, 2700);
   
INSERT INTO Rental (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (10, 1550, 870, 'Apartment', 11-Jan-16, 2, 2, '1836 Texas Ave', 'Veridian City', 54322, N, 1700);
   
INSERT INTO Rental (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (13, 188000, 2105, 'House', 10-Oct-15, 3, 2.5, '7840 FM 220', 'Gotham City', 98744, Y, 1440);







create table Auction (
    id              NUMBER(5),
    HighestBid      NUMBER(5),
    DateOfAuction   DATE(10),
    Outcome         VARCHAR(25),
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES Property (PropertyID)
);

INSERT INTO Auction (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (6, 300000, 3200, 'House', 7-Nov-15, 4, 3, '13 Elm St', 'Veridian City', 54321, 300000, 11-Nov-15, 'Sold');
   
INSERT INTO Auction (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (7, 239000, 2800, 'House', 19-Nov-15, 4, 3, '100 8th St', 'Pewter City', 24824, 215000, 28-Nov-15, 'Unsold');
   
INSERT INTO Auction (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (9, 199000, 1850, 'House', 21-Dec-15, 3, 2, '101 Main St', 'Gotham City', 98743, 199000, 2-Jan-16, 'Sold');
   
INSERT INTO Auction (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (11, 750000, 9890, 'Commercial', 14-Feb-16, 13, 4, '100 Industrial Way', 'Pewter City', 24822, 750000, 21-Apr-16, 'Sold');
   
INSERT INTO Auction (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (14, 840900, 10300, 'Commercial', 21-Mar-16, 17, 6, '119 Commerce Ave', 'Pewter City', 24824, 800000, 28-Apr-16, 'Unsold');
   
   
   
   
   
   
   
create table Private (
    id              NUMBER(5),
    AskingPrice     NUMBER(5),
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES Property (PropertyID)
);

INSERT INTO Private VALUES (1, 125000, 2200, 'House', 24-May-16, 3, 2, '24 Copperhead Row', 'Cerulean City', 12345, 133000);    

INSERT INTO Private (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (2, 195000, 2800, 'House', 13-Oct-16, 4, 3, 17 Blue Jay Way, 'Pewter City', 24816, 200000);

INSERT INTO Private (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (4, 239000, 3200, 'House', 7-Nov-15, 4, 3, '13 Elm St', 'Veridian City', 54321, 251000);
   
INSERT INTO Private (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (12, 261000, 2450, 'House', 11-Dec-15, 4, 3, '204 Stratford Cv', 'Saffron City', 16842, 274000);
   
INSERT INTO Private (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (15, 212000, 1600, 'Condominium', 8-Nov-15, 3, 2, '201 University Drive', 'Veridian City', 54323, 215000);
   







create table Agent (
    PayrollID       NUMBER(5),
    FirstName       VARCHAR(25),
    LastName        VARCHAR(25),
    PhoneNumber     Number(10),
    EmailAddress    VARCHAR(25),
    CommissionRate  NUMBER(5),
    BranchID        NUMBER(5),
    PRIMARY KEY (PayrollID),
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);

INSERT INTO Agent (PayrollID, FirstName, LastName, PhoneNumber, EmailAddress, CommissionRate, BranchID)
   VALUES (00001, 'Charles', 'Schulz', 5551234567, 'c.shulz@peanuts.com', 3.0, 1);
   
INSERT INTO Agent (PayrollID, FirstName, LastName, PhoneNumber, EmailAddress, CommissionRate, BranchID)
   VALUES (00002, 'Bill', 'Watterson', 5557654321, 'bill.w@calvinhobbes.com', 3.0, 2);
   
INSERT INTO Agent (PayrollID, FirstName, LastName, PhoneNumber, EmailAddress, CommissionRate, BranchID)
   VALUES (00003, 'Gary', 'Larson', 5555050505, 'g.larson@farside.com', 3.5, 3);
   
INSERT INTO Agent (PayrollID, FirstName, LastName, PhoneNumber, EmailAddress, CommissionRate, BranchID)
   VALUES (00004, 'Jim', 'Davis', 5551112222, 'j.davis@garfield.com', 3.0, 4);
   
INSERT INTO Agent (PayrollID, FirstName, LastName, PhoneNumber, EmailAddress, CommissionRate, BranchID)
   VALUES (00005, 'Scott', 'Adams', 5553334444, 's.adams@dilbert.com', 3.0, 5);

create table SellingAgent (
    SAgentID       NUMBER(5),
    PRIMARY KEY (SAgentID),
    FOREIGN KEY (PayrollID) REFERENCES Agent(PayrollID)
);

INSERT INTO SellingAgent (10001, 'Michael', 'Scott', 5708675309, 'michael.scott@dundermifflin.com', 3.0, 1);

INSERT INTO SellingAgent (10002, 'Dwight', 'Shrute', 5701234567, 'dwight.schrute@dundermifflin.com', 3.0, 1);

INSERT INTO SellingAgent (10003, 'Jim', 'Halpert', 5703217654, 'jim.halpert@dundermifflin.com', 3.0, 1);

INSERT INTO SellingAgent (10004, 'Ryan', 'Howard', 5709751357, 'ryan.howard@dundermifflin.com', 3.0, 1);

INSERT INTO SellingAgent (10005, 'Creed', 'Bratton', 5706914800, 'creed.bratton@dundermifflin.com', 3.0, 1);


create table LeasingAgent (
    LAgentID       NUMBER(5),
    PRIMARY KEY (LAgentID),
    FOREIGN KEY (PayrollID) REFERENCES Agent(PayrollID)
);

INSERT INTO LeasingAgent (20001, 'Darryl', 'Philbin', 5702274669, 'darryl.philbin@dundermifflin.com', 3.0, 1);

INSERT INTO LeasingAgent (20002, 'Angela', 'Lipton', 5701352468, 'angela.lipton@dundermifflin.com', 3.0, 1);

INSERT INTO LeasingAgent (20003, 'Pam', 'Beasley', 5702461357, 'pam.beasley@dundermifflin.com', 3.0, 1);

INSERT INTO LeasingAgent (20004, 'Kelly', 'Kapoor', 5705432167, 'kelly.kapoor@dundermifflin.com', 3.0, 1);

INSERT INTO LeasingAgent (20005, 'Kevin', 'Malone', 570136258, 'kevin.malone@dundermifflin.com', 3.0, 1);



create table Client (
    ClientID        NUMBER(5),
    FirstName       VARCHAR(25),
    LastName        VARCHAR(25),
    PhoneNumber     Number(10),
    EmailAddress    VARCHAR(25),
    PRIMARY KEY (ClientID)
);

INSERT INTO Client (ClientID, FirstName, LastName, PhoneNumber, EmailAddress)
   VALUES (10001, 'Tony', 'Stark', 5559876543, 'tony@starkenterprises.com');

INSERT INTO Client (ClientID, FirstName, LastName, PhoneNumber, EmailAddress)
   VALUES (10002, 'Natasha', 'Romanova', 5551231231, 'natasha@shield.com');
   
INSERT INTO Client (ClientID, FirstName, LastName, PhoneNumber, EmailAddress)
   VALUES (10003, 'Peter', 'Parker', 5559009000, 'p.parker@dailybugle.com');
   
INSERT INTO Client (ClientID, FirstName, LastName, PhoneNumber, EmailAddress)
   VALUES (10004, 'Diana', 'Prince', 5557776655, 'diana@themyscira.com');
   
INSERT INTO Client (ClientID, FirstName, LastName, PhoneNumber, EmailAddress)
   VALUES (10005, 'Bruce', 'Wayne', 5551919191, 'bruce@swayneenterprises.com');


create table Buyer (
	BuyerID			NUMBER(5),
	PRIMARY KEY (BuyerID),
	FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

INSERT INTO Buyer VALUES (30001, 'Da Vinci', 5128675309, 'leonardo@moma.net');

INSERT INTO Buyer VALUES (30002, 'Albert', 'Einstein', 3141592654, 'albert@mathletes.edu');

INSERT INTO Buyer VALUES (30003, 'Alexander', 'Bell', 4078675309, 'Alex@graham.bell');

create table ConsultsBuyer (
    BuyerID         NUMBER(5),
    SAgentID        NUMBER(5),
    SquareFeet		NUMBER(5),
	NoOfBedrooms	NUMBER(2),
	NoOfBathrooms	NUMBER(2),
	Type			VARCHAR(25),
    FOREIGN KEY (BuyerID) REFERENCES Buyer(BuyerID),
    FOREIGN KEY (SAgentID) REFERENCES SellingAgent(SAgentID)
);

INSERT INTO ConsultsBuyer VALUES (30001, 10001, 1000, 1, 1, 'Condo');

INSERT INTO ConsultsBuyer VALUES (30002, 10002, 6543, 2, 1, 'House');

INSERT INTO ConsultsBuyer VALUES (30003, 10003, 1234, 3, 2, 'Townhome');

create table Renter (
	RenterID        NUMBER(5),
	PRIMARY KEY (RenterID),
	FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

INSERT INTO Renter VALUES (40001, 'Troy', 'Barnes', 3038675309, 'tbone@greendalecc.edu')

INSERT INTO Renter VALUES (40002, 'Abed', 'Nadir', 3033141592, 'abed@greendalecc.edu')

INSERT INTO Renter VALUES (40003, 'Annie', 'Edison', 3031234567, 'annie@greendalecc.edu')

create table ConsultsRenter (
    RenterID        NUMBER(5),
    SAgentID        NUMBER(5),
    RentalLength	NUMBER(5),
	RentAmount  	NUMBER(2),
	PaymentRecord	NUMBER(5),
	Type			VARCHAR(25),
    FOREIGN KEY (RenterID) REFERENCES Renter(RenterID),
    FOREIGN KEY (SAgentID) REFERENCES SellingAgent(SAgentID)
);

INSERT INTO ConsultsRenter VALUES (30001, 10001, 320, 1, 1, 'Studio');

INSERT INTO ConsultsRenter VALUES (30002, 10002, 640, 1, 1, '1B/1B');

INSERT INTO ConsultsRenter VALUES (30003, 10003, 500, 1, 1, 'Studio');



create table Advertisement (
    AdNumber        NUMBER(5),
    Publication     VARCHAR(25),
    StartDate       DATE(10),
    EndDate         DATE(10),
    AdType          VARCHAR(25),
    Cost            NUMBER(5),
    AdFeatures      VARCHAR(25),
    Keywords        VARCHAR(25)
);

INSERT INTO Advertisement (AdNumber, Publication, StartDate, EndDate, AdType, Cost, AdFeatures, Keywords)
   VALUES (1, 'Local Impact', 7-Jan-16, 7-Feb-16, 'Newspaper Ad', 6000, '8in by 8 in', 'newspaper, realty');
   
INSERT INTO Advertisement (AdNumber, Publication, StartDate, EndDate, AdType, Cost, AdFeatures, Keywords)
   VALUES (2, 'Realty.com', 24-Mar-16, 30-Mar-16, 'Online Ad', 2000, 'Color banner', 'online, first, nation');
   
INSERT INTO Advertisement (AdNumber, Publication, StartDate, EndDate, AdType, Cost, AdFeatures, Keywords)
   VALUES (3, 'Express', 7-Nov-16, 21-Dec-16, 'Newspaper Ad', 10000, '16in by 8 in', 'newspaper, realty');

create table Inspection (
    Inspection#     NUMBER(5),
    InspectionDate  DATE(10),
    NameOfInspector VARCHAR(25),
    Result          CHAR(4)     CONSTRAINT InspectionResult
                    CHECK(Result IN ('Pass', 'Fail'))
);               
                    
INSERT INTO Inspection (Inspection#, InspectionDate, NameOfInspector, Result)
   VALUES (1, 21-Nov-15, 'John Henson', 'Fail');

INSERT INTO Inspection (Inspection#, InspectionDate, NameOfInspector, Result)
   VALUES (2, 23-Dec-15, 'Steve Jobs', 'Pass');
   
INSERT INTO Inspection (Inspection#, InspectionDate, NameOfInspector, Result)
   VALUES (3, 19-Mar-15, 'Chance Dee', 'Fail');