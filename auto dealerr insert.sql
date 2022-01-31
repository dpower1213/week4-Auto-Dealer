INSERT INTO customer(
    first_name,
    last_name,
    email,
    "address",
    city,
    "state",
    zipcode,
    phone
) 
VALUES(
    'Henry',
    'Ford',
    'hford@modelt.com',
    '1234 Compton Ave',
    'Compton',
    'CA',
    '90210',
    '555-555-5555'
);

INSERT INTO customer(
    first_name,
    last_name,
    email,
    "address",
    city,
    "state",
    zipcode,
    phone
) 
VALUES(
    'Clara',
    'Ford',
    'cford@modela.com',
    '1234 Compton Ave',
    'Compton',
    'CA',
    '90210',
    '555-555-5556'
);

INSERT INTO customer(
    first_name,
    last_name,
    email,
    "address",
    city,
    "state",
    zipcode,
    phone
) 
VALUES(
    'Elon',
    'Musk',
    'emuskie@spacerace.com',
    'International Space Station',
    'Stratusphere',
    'Stars',
    '99999',
    '800-OWN-MOON'
);

INSERT INTO customer(
    first_name,
    last_name,
    email,
    "address",
    city,
    "state",
    zipcode,
    phone
) 
VALUES(
    'Lee',
    'Iococca',
    'chrystlerisbetter@junkers.com',
    '10 Pinto On Fire Ave',
    'Los Angeles',
    'CA',
    '90211',
    '111-111-1111'
);

INSERT INTO customer(
    first_name,
    last_name,
    email,
    "address",
    city,
    "state",
    zipcode,
    phone
) 
VALUES(
    'Danica',
    'Patrick',
    'imtohot@foryou.com',
    '1 Model St',
    'Beloit',
    'WI',
    '101010',
    '101-010-1010'
);

INSERT INTO vehicle(
    vin,
    make,
    model,
    year,
    msrp
) 
VALUES(
    '123456789abcdefgh',
    'Ford',
    'Model T',
    1927,
    360.00
);

INSERT INTO vehicle(
    vin,
    make,
    model,
    year,
    msrp
) 
VALUES(
    '123456789abcdefgi',
    'Delorean',
    'Flux Capacitor',
    1981,
    25000.00
);

INSERT INTO vehicle(
    vin,
    make,
    model,
    year,
    msrp
) 
VALUES(
    '123456789abcdefgj',
    'Ford',
    'Pinto',
    1971,
    10000.00
);

INSERT INTO vehicle(
    vin,
    make,
    model,
    year,
    msrp
) 
VALUES(
    '123456789abcdefgk',
    'Rolls Royce',
    'Phantom',
    2022,
    500000.00
);

INSERT INTO vehicle(
    vin,
    make,
    model,
    year,
    msrp
) 
VALUES(
    '123456789abcdefgl',
    'Mercedes',
    'Smart Car',
    2020,
    6000.00
);

INSERT INTO employee_position(
    position
) 
VALUES(
    'Manager'
);

INSERT INTO employee_position(
    position
) 
VALUES(
    'Salesperson'
);

INSERT INTO employee_position(
    position
) 
VALUES(
    'Mechanic'
);

INSERT INTO employee_position(
    position
) 
VALUES(
    'Car Washer'
);

INSERT INTO employee_position(
    position
) 
VALUES(
    'Coffee Maker'
);

INSERT INTO employee(
    first_name,
    last_name,
    position_id
) 
VALUES(
    'Juan',
    'Valdez',
    5
);

INSERT INTO employee(
    first_name,
    last_name,
    position_id
) 
VALUES(
    'Angus',
    'MacGyver',
    3
);

INSERT INTO employee(
    first_name,
    last_name,
    position_id
) 
VALUES(
    'Mr.',
    'Wizard',
    3
);

INSERT INTO employee(
    first_name,
    last_name,
    position_id
) 
VALUES(
    'Arthur',
    'Miller',
    2
);

INSERT INTO employee(
    first_name,
    last_name,
    position_id
) 
VALUES(
    'Dixie',
    'D`Amelio',
    2
);

INSERT INTO part(
    part_name,
    quantity,
    price
) 
VALUES(
    'Oil',
    50,
    5.99
);

INSERT INTO part(
    part_name,
    quantity,
    price
) 
VALUES(
    'Flux Capacitor',
    1,
    13000.99
);

INSERT INTO part(
    part_name,
    quantity,
    price
) 
VALUES(
    'Mr. Fusion',
    1,
    1.99
);

INSERT INTO part(
    part_name,
    quantity,
    price
) 
VALUES(
    'Fire Extiguisher',
    5,
    12.99
);

INSERT INTO part(
    part_name,
    quantity,
    price
) 
VALUES(
    'Sun Roof',
    10,
    5000.99
);

INSERT INTO purchase_invoice(
    vin,
    customer_id,
    employee_id,
    price,
    "date"
) 
VALUES(
    '123456789abcdefgh',
    1,
    4,
    360.00,
    '1928-01-01'
);

INSERT INTO purchase_invoice(
    vin,
    customer_id,
    employee_id,
    price,
    "date"
) 
VALUES(
    '123456789abcdefgi',
    5,
    5,
    21500.00,
    '1955-11-05'
);

INSERT INTO purchase_invoice(
    vin,
    customer_id,
    employee_id,
    price,
    "date"
) 
VALUES(
    '123456789abcdefgj',
    4,
    4,
    10000.00,
    '1971-12-25'
);

INSERT INTO purchase_invoice(
    vin,
    customer_id,
    employee_id,
    price,
    "date"
) 
VALUES(
    '123456789abcdefgk',
    2,
    5,
    495000.00,
    '2022-01-28'
);

INSERT INTO purchase_invoice(
    vin,
    customer_id,
    employee_id,
    price,
    "date"
) 
VALUES(
    '123456789abcdefgl',
    3,
    5,
    10000.00,
    '2021-04-01'
);

INSERT INTO service_invoice(
    vin,
    customer_id,
    "desc",
    amount,
    "date"
) 
VALUES(
    '123456789abcdefgh',
    1,
    'Oil Change',
    50.00,
    '1928-02-01'
);

INSERT INTO service_part(
    part_id,
    invoice_id
) 
VALUES(
    1,
    1
);

INSERT INTO employee_service(
    employee_id,
    invoice_id
) 
VALUES(
    2,
    1
);

INSERT INTO service_invoice(
    vin,
    customer_id,
    "desc",
    amount,
    "date"
) 
VALUES(
    '123456789abcdefgi',
    5,
    'Time Travel Update',
    13003.00,
    '1985-06-15'
);

INSERT INTO service_part(
    part_id,
    invoice_id
) 
VALUES(
    2,
    2
);

INSERT INTO service_part(
    part_id,
    invoice_id
) 
VALUES(
    3,
    2
);

INSERT INTO employee_service(
    employee_id,
    invoice_id
) 
VALUES(
    3,
    2
);

INSERT INTO employee_service(
    employee_id,
    invoice_id
) 
VALUES(
    2,
    2
);

INSERT INTO service_invoice(
    vin,
    customer_id,
    "desc",
    amount,
    "date"
) 
VALUES(
    '123456789abcdefgj',
    4,
    'Install Fire Extinguisher',
    20.99,
    '1972-02-17'
);

INSERT INTO service_part(
    part_id,
    invoice_id
) 
VALUES(
    4,
    3
);

INSERT INTO employee_service(
    employee_id,
    invoice_id
) 
VALUES(
    2,
    3
);

INSERT INTO service_invoice(
    vin,
    customer_id,
    "desc",
    amount,
    "date"
) 
VALUES(
    '123456789abcdefgk',
    2,
    'Install Sun Roof',
    6000.99,
    '2022-01-29'
);

INSERT INTO service_part(
    part_id,
    invoice_id
) 
VALUES(
    5,
    4
);

INSERT INTO employee_service(
    employee_id,
    invoice_id
) 
VALUES(
    3,
    4
);

INSERT INTO service_invoice(
    vin,
    customer_id,
    "desc",
    amount,
    "date"
) 
VALUES(
    '123456789abcdefgl',
    3,
    'Oil Change',
    50,
    '2021-04-01'
);

INSERT INTO service_part(
    part_id,
    invoice_id
) 
VALUES(
    1,
    5
);

INSERT INTO employee_service(
    employee_id,
    invoice_id
) 
VALUES(
    1,
    5
);