/*I haven't tested any of this, so I'm not sure if it works. Also, there are a few
points where my values don't match the restrictions in the create statements, so
that needs to be deconflicted. Only halfway done. --Caleb */


-- Branch Table

INSERT INTO Branch (BranchID, StreetAddress, Suburb/City, ZipCode)
   VALUES (1, 11 Yellow Brick Rd, Cerulean City, 12345);

INSERT INTO Branch (BranchID, StreetAddress, Suburb/City, ZipCode)
   VALUES (2, 21 Jump St, Veridian City, 54321);

INSERT INTO Branch (BranchID, StreetAddress, Suburb/City, ZipCode)
   VALUES (3, 44 Broken Dreams Blvd, Pewter City, 24816);

INSERT INTO Branch (BranchID, StreetAddress, Suburb/City, ZipCode)
   VALUES (4, 1982 Electric Avenue, Cerulean City, 12345);

INSERT INTO Branch (BranchID, StreetAddress, Suburb/City, ZipCode)
   VALUES (5, 22 Twain St, Saffron City, 16842);

-- Property Table (need at least 15 properties according to specification)

INSERT INTO Property (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (1, 125000, 2200, House, 24-May-16, 3, 2, 24 Copperhead Row, Cerulean City, 12345);

INSERT INTO Property (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (2, 195000, 2800, House, 13-Oct-16, 4, 3, 17 Blue Jay Way, Pewter City, 24816);

INSERT INTO Property (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (3, 159000, 1800, Condominium, 11-Jun-16, 2, 1.5, 64 Penny Ln, Saffron City, 16842);

INSERT INTO Property (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (4, 239000, 3200, House, 7-Nov-15, 4, 3, 13 Elm St, Veridian City, 54321);

INSERT INTO Property (PropertyID, Price, SquareFeet, PropertyType, DateListed, NoOfBedrooms, NoOfBathrooms, StreetAddress, Suburb/City, ZipCode)
   VALUES (5, 1400, 995, Apartment, 24-MAY-16, 2, 2, 1984 34th St, Cerulean City, 12345);

--Agent Table

INSERT INTO Agent (PayrollID, FirstName, LastName, PhoneNumber, EmailAddress, CommissionRate, BranchID)
   VALUES (00001, Charles, Schulz, 5551234567, c.shulz@peanuts.com, 3.0, 1)
   
INSERT INTO Agent (PayrollID, FirstName, LastName, PhoneNumber, EmailAddress, CommissionRate, BranchID)
   VALUES (00002, Bill, Watterson, 5557654321, bill.w@calvinhobbes.com, 3.0, 2)
   
INSERT INTO Agent (PayrollID, FirstName, LastName, PhoneNumber, EmailAddress, CommissionRate, BranchID)
   VALUES (00003, Gary, Larson, 5555050505, g.larson@farside.com, 3.5, 3)
   
INSERT INTO Agent (PayrollID, FirstName, LastName, PhoneNumber, EmailAddress, CommissionRate, BranchID)
   VALUES (00004, Jim, Davis, 5551112222, j.davis@garfield.com, 3.0, 4)
   
INSERT INTO Agent (PayrollID, FirstName, LastName, PhoneNumber, EmailAddress, CommissionRate, BranchID)
   VALUES (00005, Scott, Adams, 5553334444, s.adams@dilbert.com, 3.0, 5)
   
-- Client Table

INSERT INTO Client (ClientID, FirstName, LastName, PhoneNumber, EmailAddress)
   VALUES (10001, Tony, Stark 5559876543, tony@starkenterprises.com)

INSERT INTO Client (ClientID, FirstName, LastName, PhoneNumber, EmailAddress)
   VALUES (10002, Natasha, Romanova 5551231231, natasha@shield.com)
   
INSERT INTO Client (ClientID, FirstName, LastName, PhoneNumber, EmailAddress)
   VALUES (10003, Peter, Parker 5559009000, p.parker@dailybugle.com)
   
INSERT INTO Client (ClientID, FirstName, LastName, PhoneNumber, EmailAddress)
   VALUES (10004, Diana, Prince 5557776655, diana@themyscira.com)
   
INSERT INTO Client (ClientID, FirstName, LastName, PhoneNumber, EmailAddress)
   VALUES (10005, Bruce, Wayne 5551919191, bruce@swayneenterprises.com)
   
-- Advertisement Table

