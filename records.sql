INSERT INTO GALLERY VALUES(
    'G001',
    'London',
    'British Museum'
);
INSERT INTO GALLERY VALUES(
    'G002',
    'Paris',
    'The Louvre'
);
INSERT INTO GALLERY VALUES(
    'G003',
    'New York',
    'Museum Of Modern Art'
);
INSERT INTO GALLERY VALUES(
    'G004',
    'Kolkata',
    'Indian Museum'
);

INSERT INTO EXHIBITION VALUES(
    'E001',
    TO_DATE('08-04-2024', 'DD-MM-YYYY'),
    TO_DATE('04-04-2024', 'DD-MM-YYYY'),
    'G001'
);
INSERT INTO EXHIBITION VALUES(
    'E002',
    TO_DATE('21-03-2024', 'DD-MM-YYYY'),
    TO_DATE('18-03-2024', 'DD-MM-YYYY'),
    'G001'
);
INSERT INTO EXHIBITION VALUES(
    'E003',
    TO_DATE('21-03-2024', 'DD-MM-YYYY'),
    TO_DATE('18-03-2024', 'DD-MM-YYYY'),
    'G002'
);
INSERT INTO EXHIBITION VALUES(
    'E004',
    TO_DATE('21-03-2024', 'DD-MM-YYYY'),
    TO_DATE('18-03-2024', 'DD-MM-YYYY'),
    'G003'
);
INSERT INTO EXHIBITION VALUES(
    'E005',
    TO_DATE('21-03-2024', 'DD-MM-YYYY'),
    TO_DATE('18-03-2024', 'DD-MM-YYYY'),
    'G004'
);
INSERT INTO EXHIBITION VALUES(
    'E006',
    TO_DATE('21-03-2024', 'DD-MM-YYYY'),
    TO_DATE('18-03-2024', 'DD-MM-YYYY'),
    'G004'
);

 -- For exhibition E001 and gallery G001
INSERT INTO ARTIST VALUES ('A001', 'Painting', 'Paris', 'Vincent', 'van Gogh', 'E001', 'G001');
INSERT INTO ARTIST VALUES ('A002', 'Painting', 'Florence', 'Leonardo', 'da Vinci', 'E001', 'G001');
INSERT INTO ARTIST VALUES ('A003', 'Painting', 'Malaga', 'Pablo', 'Picasso', 'E001', 'G001');

-- For exhibition E002 and gallery G001
INSERT INTO ARTIST VALUES ('A004', 'Sculpture', 'Figueres', 'Salvador', 'Dalí', 'E002', 'G001');
INSERT INTO ARTIST VALUES ('A005', 'Painting', 'Cody', 'Jackson', 'Pollock', 'E002', 'G001');
INSERT INTO ARTIST VALUES ('A006', 'Digital Art', 'Pittsburgh', 'Donald', 'Judd', 'E002', 'G001');

-- For exhibition E003 and gallery G002
INSERT INTO ARTIST VALUES ('A007', 'Painting', 'Anchiano', 'Leonardo', 'da Vinci', 'E003', 'G002');
INSERT INTO ARTIST VALUES ('A008', 'Painting', 'Florence', 'Sandro', 'Botticelli', 'E003', 'G002');
INSERT INTO ARTIST VALUES ('A009', 'Painting', 'Urbino', 'Raphael', 'Sanzio', 'E003', 'G002');

-- For exhibition E004 and gallery G003
INSERT INTO ARTIST VALUES ('A010', 'Sculpture', 'Florence', 'Michelangelo', 'Buonarroti', 'E004', 'G003');
INSERT INTO ARTIST VALUES ('A011', 'Sculpture', 'Paris', 'Auguste', 'Rodin', 'E004', 'G003');
INSERT INTO ARTIST VALUES ('A012', 'Sculpture', 'Copenhagen', 'Bertel', 'Thorvaldsen', 'E004', 'G003');

-- For exhibition E005 and gallery G004
INSERT INTO ARTIST VALUES ('A013', 'Painting', 'Munich', 'Albrecht', 'Dürer', 'E005', 'G004');
INSERT INTO ARTIST VALUES ('A014', 'Painting', 'Amsterdam', 'Rembrandt', 'van Rijn', 'E005', 'G004');
INSERT INTO ARTIST VALUES ('A015', 'Painting', 'Barcelona', 'Pablo', 'Picasso', 'E005', 'G004');

-- For exhibition E006 and gallery G004
INSERT INTO ARTIST VALUES ('A016', 'Painting', 'Madrid', 'Diego', 'Velázquez', 'E006', 'G004');
INSERT INTO ARTIST VALUES ('A017', 'Sculpture', 'Florence', 'Donatello', 'di Niccolò', 'E006', 'G004');
INSERT INTO ARTIST VALUES ('A018', 'Digital Art', 'New York', 'Andy', 'Warhol', 'E006', 'G004');




-- For artist A001 (Vincent van Gogh)
INSERT INTO ARTWORK VALUES ('AT001', 'The Starry Night', 250000, 1889, 'A001', 'Painting', 'E001', 'G001');

-- For artist A002 (Leonardo da Vinci)
INSERT INTO ARTWORK VALUES ('AT002', 'Mona Lisa', 780000, 1503, 'A002', 'Painting', 'E001', 'G001');

-- For artist A003 (Pablo Picasso)
INSERT INTO ARTWORK VALUES ('AT003', 'Les Demoiselles dAvignon', 600000, 1907, 'A003', 'Painting', 'E001', 'G001');

-- For artist A004 (Salvador Dalí)
INSERT INTO ARTWORK VALUES ('AT004', 'The Persistence of Memory', 1500000, 1931, 'A004', 'Painting', 'E002', 'G001');

-- For artist A005 (Jackson Pollock)
INSERT INTO ARTWORK VALUES ('AT005', 'No. 5, 1948', 1400000, 1948, 'A005', 'Painting', 'E002', 'G001');

-- For artist A006 (Donald Judd)
INSERT INTO ARTWORK VALUES ('AT006', 'Untitled', 300000, 1960, 'A006', 'Digital Art', 'E002', 'G001');

-- For artist A007 (Leonardo da Vinci)
INSERT INTO ARTWORK VALUES ('AT007', 'The Last Supper', 1200000, 1498, 'A007', 'Painting', 'E003', 'G002');

-- For artist A008 (Sandro Botticelli)
INSERT INTO ARTWORK VALUES ('AT008', 'The Birth of Venus', 1000000, 1486, 'A008', 'Painting', 'E003', 'G002');

-- For artist A009 (Raphael Sanzio)
INSERT INTO ARTWORK VALUES ('AT009', 'The School of Athens', 1200000, 1511, 'A009', 'Painting', 'E003', 'G002');

-- For artist A010 (Michelangelo Buonarroti)
INSERT INTO ARTWORK VALUES ('AT010', 'David', 3000000, 1504, 'A010', 'Sculpture', 'E004', 'G003');

-- For artist A011 (Auguste Rodin)
INSERT INTO ARTWORK VALUES ('AT011', 'The Thinker', 2000000, 1902, 'A011', 'Sculpture', 'E004', 'G003');

-- For artist A012 (Bertel Thorvaldsen)
INSERT INTO ARTWORK VALUES ('AT012', 'Christus', 1500000, 1838, 'A012', 'Sculpture', 'E004', 'G003');

-- For artist A013 (Albrecht Dürer)
INSERT INTO ARTWORK VALUES ('AT013', 'Melencolia I', 500000, 1514, 'A013', 'Engraving', 'E005', 'G004');

-- For artist A014 (Rembrandt van Rijn)
INSERT INTO ARTWORK VALUES ('AT014', 'The Night Watch', 4000000, 1642, 'A014', 'Painting', 'E005', 'G004');

-- For artist A015 (Pablo Picasso)
INSERT INTO ARTWORK VALUES ('AT015', 'Guernica', 800000, 1937, 'A015', 'Painting', 'E005', 'G004');

-- For artist A016 (Diego Velázquez)
INSERT INTO ARTWORK VALUES ('AT016', 'Las Meninas', 2000000, 1656, 'A016', 'Painting', 'E006', 'G004');

-- For artist A017 (Donatello)
INSERT INTO ARTWORK VALUES ('AT017', 'David', 3000000, 1440, 'A017', 'Sculpture', 'E006', 'G004');

-- For artist A018 (Andy Warhol)
INSERT INTO ARTWORK VALUES ('AT018', 'Campbells Soup Cans', 3500000, 1962, 'A018', 'Painting', 'E006', 'G004');
-- For artist A001 (Vincent van Gogh)
INSERT INTO ARTWORK VALUES ('AT019', 'Sunflowers', 300000, 1888, 'A001', 'Painting', 'E001', 'G001');

-- For artist A002 (Leonardo da Vinci)
INSERT INTO ARTWORK VALUES ('AT020', 'Vitruvian Man', 1500000, 1490, 'A002', 'Drawing', 'E002', 'G001');

-- For artist A003 (Pablo Picasso)
INSERT INTO ARTWORK VALUES ('AT021', 'Guernica', 800000, 1937, 'A003', 'Painting', 'E001', 'G001');

-- For artist A004 (Salvador Dalí)
INSERT INTO ARTWORK VALUES ('AT022', 'The Elephants', 200000, 1948, 'A004', 'Painting', 'E002', 'G001');

-- For artist A005 (Jackson Pollock)
INSERT INTO ARTWORK VALUES ('AT023', 'Blue Poles', 1700000, 1952, 'A005', 'Painting', 'E002', 'G001');

-- For artist A006 (Donald Judd)
INSERT INTO ARTWORK VALUES ('AT024', 'Untitled II', 500000, 1960, 'A006', 'Digital Art', 'E002', 'G001');

-- For artist A007 (Leonardo da Vinci)
INSERT INTO ARTWORK VALUES ('AT025', 'The Vitruvian Man', 1400000, 1490, 'A007', 'Drawing', 'E003', 'G002');



-- Generating 30 random customers
INSERT INTO CUSTOMER  VALUES('C001','G001' ,'John', 'Doe', TO_DATE('1990-01-15', 'YYYY-MM-DD'), '123 Main St', 123456);
INSERT INTO CUSTOMER  VALUES('C002', 'G001', 'Jane', 'Smith', TO_DATE('1985-07-20', 'YYYY-MM-DD'), '456 Oak St', 234567);
INSERT INTO CUSTOMER  VALUES('C003','G001', 'Michael', 'Johnson', TO_DATE('1978-03-10', 'YYYY-MM-DD'), '789 Elm St', 345678);
INSERT INTO CUSTOMER VALUES('C004', 'G001', 'Emily', 'Brown', TO_DATE('1995-11-25', 'YYYY-MM-DD'), '101 Pine St', 456789);
INSERT INTO CUSTOMER  VALUES('C005','G001', 'David', 'Martinez', TO_DATE('1982-09-05', 'YYYY-MM-DD'), '202 Cedar St', 567890);
INSERT INTO CUSTOMER  VALUES('C006','G001', 'Jennifer', 'Lopez', TO_DATE('1973-06-30', 'YYYY-MM-DD'), '303 Maple St', 678901);
INSERT INTO CUSTOMER  VALUES('C007', 'G002','William', 'Wilson', TO_DATE('1992-04-18', 'YYYY-MM-DD'), '404 Walnut St', 789012);
INSERT INTO CUSTOMER  VALUES('C008','G002',  'Jessica', 'Lee', TO_DATE('1987-12-12', 'YYYY-MM-DD'), '505 Pineapple St', 890123);
INSERT INTO CUSTOMER  VALUES('C009', 'G002','Christopher', 'Taylor', TO_DATE('1976-08-08', 'YYYY-MM-DD'), '606 Banana St', 901234);
INSERT INTO CUSTOMER  VALUES('C010','G003', 'Amanda', 'Clark', TO_DATE('1998-02-28', 'YYYY-MM-DD'), '707 Orange St', 123789);
INSERT INTO CUSTOMER  VALUES ('C011','G003', 'Brandon', 'Jones', TO_DATE('1993-05-22', 'YYYY-MM-DD'), '808 Mango St', 234678);
INSERT INTO CUSTOMER  VALUES ('C012','G003', 'Sarah', 'Anderson', TO_DATE('1986-11-08', 'YYYY-MM-DD'), '909 Lemon St', 345789);
INSERT INTO CUSTOMER  VALUES ('C013','G004','Daniel', 'Thompson', TO_DATE('1975-07-15', 'YYYY-MM-DD'), '1010 Grape St', 456890);
INSERT INTO CUSTOMER  VALUES ('C014', 'G004','Emily', 'Clark', TO_DATE('1989-03-18', 'YYYY-MM-DD'), '202 Walnut St', 567901);
INSERT INTO CUSTOMER  VALUES ('C015','G004', 'James', 'Martinez', TO_DATE('1978-12-03', 'YYYY-MM-DD'), '303 Peach St', 678012);
INSERT INTO CUSTOMER  VALUES ('C016','G001', 'Olivia', 'Lee', TO_DATE('1992-06-30', 'YYYY-MM-DD'), '404 Apple St', 789123);
INSERT INTO CUSTOMER  VALUES ('C017', 'G001','David', 'Harris', TO_DATE('1980-09-14', 'YYYY-MM-DD'), '505 Orange St', 890234);
INSERT INTO CUSTOMER  VALUES ('C018','G003', 'Mia', 'Young', TO_DATE('1987-04-27', 'YYYY-MM-DD'), '606 Banana St', 901345);
INSERT INTO CUSTOMER  VALUES ('C019', 'G001','William', 'Scott', TO_DATE('1976-10-09', 'YYYY-MM-DD'), '707 Pear St', 123456);
INSERT INTO CUSTOMER  VALUES ('C020', 'G003','Ava', 'Green', TO_DATE('1990-02-15', 'YYYY-MM-DD'), '808 Grapefruit St', 234567);
INSERT INTO CUSTOMER  VALUES ('C021','G004', 'Ethan', 'Brown', TO_DATE('1985-08-20', 'YYYY-MM-DD'), '909 Pine St', 345678);
INSERT INTO CUSTOMER  VALUES ('C022','G004', 'Sophia', 'Evans', TO_DATE('1974-02-14', 'YYYY-MM-DD'), '1010 Elm St', 456789);
INSERT INTO CUSTOMER  VALUES ('C023','G001', 'Matthew', 'King', TO_DATE('1983-06-27', 'YYYY-MM-DD'), '202 Oak St', 567890);
INSERT INTO CUSTOMER  VALUES ('C024','G004','Amelia', 'Baker', TO_DATE('1994-11-11', 'YYYY-MM-DD'), '303 Maple St', 678901);
INSERT INTO CUSTOMER  VALUES ('C025','G002', 'Michael', 'Garcia', TO_DATE('1977-07-05', 'YYYY-MM-DD'), '404 Cherry St', 789012);
INSERT INTO CUSTOMER  VALUES ('C026', 'G002','Emma', 'Martinez', TO_DATE('1988-04-02', 'YYYY-MM-DD'), '505 Walnut St', 890123);
INSERT INTO CUSTOMER  VALUES ('C027', 'G004','Noah', 'Young', TO_DATE('1981-09-18', 'YYYY-MM-DD'), '606 Pineapple St', 901234);
INSERT INTO CUSTOMER  VALUES ('C028','G001', 'Isabella', 'Scott', TO_DATE('1993-03-25', 'YYYY-MM-DD'), '707 Cherry Blossom St', 123567);
INSERT INTO CUSTOMER  VALUES ('C029','G004', 'Alexander', 'Wang', TO_DATE('1979-10-30', 'YYYY-MM-DD'), '808 Maple Leaf St', 234678);
INSERT INTO CUSTOMER  VALUES ('C030', 'G002','Charlotte', 'Zhang', TO_DATE('1995-05-16', 'YYYY-MM-DD'), '909 Oak Leaf St', 345789);



-- Inserting some sample purchases
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C001', 'AT001');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C002', 'AT002');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C003', 'AT003');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C004', 'AT004');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C005', 'AT005');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C006', 'AT006');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C007', 'AT007');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C008', 'AT008');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C009', 'AT009');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C010', 'AT010');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C011', 'AT011');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C012', 'AT012');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C013', 'AT013');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C014', 'AT014');
INSERT INTO BUYS (CUSTID, ARTID) VALUES ('C015', 'AT015');





