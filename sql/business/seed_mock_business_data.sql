-- Insert additional mock data into businesses table
INSERT INTO businesses (business_name, business_type, start_date, owner_name, address, contact_number, email)
VALUES
    ('Urban Eats', 'Restaurant', '2017-09-10', 'Carlos Martinez', '567 Foodie Ln, Austin, TX', '555-1122', 'carlos@urbaneats.com'),
    ('Elite Fitness', 'Fitness', '2016-04-18', 'Nina Patel', '890 Workout Dr, Denver, CO', '555-2233', 'nina@elitefitness.com'),
    ('Smart Solutions', 'IT Services', '2019-02-22', 'James Wong', '321 Tech Blvd, Seattle, WA', '555-3344', 'james@smartsolutions.com'),
    ('Fresh Fashion', 'Retail', '2021-05-30', 'Sophia King', '432 Style Ave, Los Angeles, CA', '555-4455', 'sophia@freshfashion.com');

-- Insert additional mock data into employees table
INSERT INTO employees (business_id, name, position, salary, hire_date, contact_number, email)
VALUES
    (4, 'Antonio Lopez', 'Head Chef', 65000.00, '2017-10-01', '555-5566', 'antonio@urbaneats.com'),
    (4, 'Laura White', 'Waitress', 35000.00, '2019-08-20', '555-6677', 'laura@urbaneats.com'),
    (5, 'Brian Clark', 'Personal Trainer', 50000.00, '2016-06-10', '555-7788', 'brian@elitefitness.com'),
    (5, 'Megan Miller', 'Receptionist', 30000.00, '2018-03-12', '555-8899', 'megan@elitefitness.com'),
    (6, 'Kevin Liu', 'Software Developer', 90000.00, '2019-03-01', '555-9900', 'kevin@smartsolutions.com'),
    (6, 'Natalie Harris', 'IT Consultant', 95000.00, '2019-06-15', '555-1110', 'natalie@smartsolutions.com'),
    (7, 'David Parker', 'Sales Associate', 40000.00, '2021-06-15', '555-2221', 'david@freshfashion.com'),
    (7, 'Emma Thompson', 'Store Manager', 55000.00, '2021-07-01', '555-3332', 'emma@freshfashion.com');

-- Insert additional mock data into products table
INSERT INTO products (business_id, product_name, category, unit_price, quantity_in_stock, supplier, last_ordered, next_delivery_date)
VALUES
    (4, 'Gourmet Burger', 'Food', 12.00, 150, 'Local Farms', '2023-08-15', '2023-08-20'),
    (4, 'Vegan Salad', 'Food', 10.00, 100, 'GreenLeaf Supply', '2023-08-10', '2023-08-18'),
    (5, 'Yoga Mat', 'Fitness Equipment', 25.00, 75, 'FitPro Inc.', '2023-09-01', '2023-09-10'),
    (5, 'Dumbbells (10kg)', 'Fitness Equipment', 50.00, 60, 'StrengthCo Ltd.', '2023-09-05', '2023-09-15'),
    (6, 'IT Support Package', 'Service', 150.00, 0, 'N/A', NULL, NULL),
    (6, 'Custom Software Development', 'Service', 5000.00, 0, 'N/A', NULL, NULL),
    (7, 'Designer Jeans', 'Clothing', 80.00, 120, 'FashionHub', '2023-08-25', '2023-09-05'),
    (7, 'Leather Jacket', 'Clothing', 200.00, 50, 'StyleWorks', '2023-08-28', '2023-09-07');

-- Insert additional mock data into transactions table
INSERT INTO transactions (business_id, product_id, transaction_date, quantity_sold, total_value, payment_method)
VALUES
    (4, 7, '2023-08-16', 25, 300.00, 'Credit Card'),
    (4, 8, '2023-08-18', 20, 200.00, 'Cash'),
    (5, 9, '2023-09-02', 15, 375.00, 'Credit Card'),
    (5, 10, '2023-09-06', 10, 500.00, 'Bank Transfer'),
    (6, 11, '2023-08-20', 1, 150.00, 'Credit Card'),
    (6, 12, '2023-08-30', 1, 5-- Create businesses table
CREATE TABLE businesses (
    business_id SERIAL PRIMARY KEY,
    business_name VARCHAR(100),
    business_type VARCHAR(50),
    start_date DATE,
    owner_name VARCHAR(100),
    address VARCHAR(255),
    contact_number VARCHAR(20),
    email VARCHAR(100)
);

-- Create employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    business_id INT REFERENCES businesses(business_id),
    name VARCHAR(100),
    position VARCHAR(100),
    salary NUMERIC(10, 2),
    hire_date DATE,
    contact_number VARCHAR(20),
    email VARCHAR(100)
);

-- Create products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    business_id INT REFERENCES businesses(business_id),
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price NUMERIC(10, 2),
    quantity_in_stock INT,
    supplier VARCHAR(100),
    last_ordered DATE,
    next_delivery_date DATE
);

-- Create transactions table
CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    business_id INT REFERENCES businesses(business_id),
    product_id INT REFERENCES products(product_id),
    transaction_date DATE,
    quantity_sold INT,
    total_value NUMERIC(10, 2),
    payment_method VARCHAR(20)
);

-- Create financial_records table
CREATE TABLE financial_records (
    record_id SERIAL PRIMARY KEY,
    business_id INT REFERENCES businesses(business_id),
    date DATE,
    amount NUMERIC(10, 2),
    description TEXT,
    category VARCHAR(100),
    transaction_type VARCHAR(20), -- Income or Expense
    payment_method VARCHAR(20) -- Cash, Credit Card, etc.
);

-- Insert comprehensive mock data into businesses table
INSERT INTO businesses (business_name, business_type, start_date, owner_name, address, contact_number, email)
VALUES
    ('Urban Eats', 'Restaurant', '2017-09-10', 'Carlos Martinez', '567 Foodie Ln, Austin, TX', '555-1122', 'carlos@urbaneats.com'),
    ('Elite Fitness', 'Fitness', '2016-04-18', 'Nina Patel', '890 Workout Dr, Denver, CO', '555-2233', 'nina@elitefitness.com'),
    ('Smart Solutions', 'IT Services', '2019-02-22', 'James Wong', '321 Tech Blvd, Seattle, WA', '555-3344', 'james@smartsolutions.com'),
    ('Fresh Fashion', 'Retail', '2021-05-30', 'Sophia King', '432 Style Ave, Los Angeles, CA', '555-4455', 'sophia@freshfashion.com'),
    ('Creative Studios', 'Media & Advertising', '2015-11-12', 'Linda Green', '123 Creative Blvd, San Francisco, CA', '555-5566', 'linda@creativestudios.com'),
    ('AutoMaster', 'Automotive Services', '2018-07-15', 'Ryan Mitchell', '789 Car Lane, Detroit, MI', '555-6677', 'ryan@automaster.com'),
    ('Green Gardens', 'Landscaping Services', '2016-08-20', 'Emily Brown', '101 Greenway, Orlando, FL', '555-7788', 'emily@greengardens.com');

-- Insert comprehensive mock data into employees table
INSERT INTO employees (business_id, name, position, salary, hire_date, contact_number, email)
VALUES
    (1, 'Antonio Lopez', 'Head Chef', 65000.00, '2017-10-01', '555-5566', 'antonio@urbaneats.com'),
    (1, 'Laura White', 'Waitress', 35000.00, '2019-08-20', '555-6677', 'laura@urbaneats.com'),
    (2, 'Brian Clark', 'Personal Trainer', 50000.00, '2016-06-10', '555-7788', 'brian@elitefitness.com'),
    (2, 'Megan Miller', 'Receptionist', 30000.00, '2018-03-12', '555-8899', 'megan@elitefitness.com'),
    (3, 'Kevin Liu', 'Software Developer', 90000.00, '2019-03-01', '555-9900', 'kevin@smartsolutions.com'),
    (3, 'Natalie Harris', 'IT Consultant', 95000.00, '2019-06-15', '555-1110', 'natalie@smartsolutions.com'),
    (4, 'David Parker', 'Sales Associate', 40000.00, '2021-06-15', '555-2221', 'david@freshfashion.com'),
    (4, 'Emma Thompson', 'Store Manager', 55000.00, '2021-07-01', '555-3332', 'emma@freshfashion.com'),
    (5, 'Michael Anderson', 'Graphic Designer', 65000.00, '2016-01-15', '555-4443', 'michael@creativestudios.com'),
    (5, 'Samantha Lewis', 'Marketing Manager', 75000.00, '2016-05-22', '555-5554', 'samantha@creativestudios.com'),
    (6, 'John Howard', 'Mechanic', 50000.00, '2018-09-01', '555-6665', 'john@automaster.com'),
    (6, 'Chris Green', 'Service Manager', 60000.00, '2019-04-10', '555-7776', 'chris@automaster.com'),
    (7, 'Lisa Walker', 'Landscape Architect', 45000.00, '2017-11-05', '555-8887', 'lisa@greengardens.com'),
    (7, 'Mark Simmons', 'Gardener', 35000.00, '2018-02-18', '555-9998', 'mark@greengardens.com');

-- Insert comprehensive mock data into products table
INSERT INTO products (business_id, product_name, category, unit_price, quantity_in_stock, supplier, last_ordered, next_delivery_date)
VALUES
    (1, 'Gourmet Burger', 'Food', 12.00, 150, 'Local Farms', '2023-08-15', '2023-08-20'),
    (1, 'Vegan Salad', 'Food', 10.00, 100, 'GreenLeaf Supply', '2023-08-10', '2023-08-18'),
    (2, 'Yoga Mat', 'Fitness Equipment', 25.00, 75, 'FitPro Inc.', '2023-09-01', '2023-09-10'),
    (2, 'Dumbbells (10kg)', 'Fitness Equipment', 50.00, 60, 'StrengthCo Ltd.', '2023-09-05', '2023-09-15'),
    (3, 'IT Support Package', 'Service', 150.00, 0, 'N/A', NULL, NULL),
    (3, 'Custom Software Development', 'Service', 5000.00, 0, 'N/A', NULL, NULL),
    (4, 'Designer Jeans', 'Clothing', 80.00, 120, 'FashionHub', '2023-08-25', '2023-09-05'),
    (4, 'Leather Jacket', 'Clothing', 200.00, 50, 'StyleWorks', '2023-08-28', '2023-09-07'),
    (5, 'Brand Campaign Design', 'Service', 8000.00, 0, 'N/A', NULL, NULL),
    (5, 'Social Media Management', 'Service', 2000.00, 0, 'N/A', NULL, NULL),
    (6, 'Oil Change', 'Service', 30.00, 0, 'N/A', NULL, NULL),
    (6, 'Tire Replacement', 'Service', 100.00, 0, 'N/A', NULL, NULL),
    (7, 'Garden Maintenance', 'Service', 150.00, 0, 'N/A', NULL, NULL),
    (7, 'Tree Planting', 'Service', 500.00, 0, 'N/A', NULL, NULL);

-- Insert comprehensive mock data into transactions table
INSERT INTO transactions (business_id, product_id, transaction_date, quantity_sold, total_value, payment_method)
VALUES
    (1, 1, '2023-08-16', 25, 300.00, 'Credit Card'),
    (1, 2, '2023-08-18', 20, 200.00, 'Cash'),
    (2, 3, '2023-09-02', 15, 375.00, 'Credit Card'),
    (2, 4, '2023-09-06', 10, 500.00, 'Bank Transfer'),
    (3, 5, '2023-08-20', 1, 150.00, 'Credit Card'),
    (3, 6, '2023-08-30', 1, 5000.00, 'Bank Transfer'),
    (4, 7, '2023-09-02', 40, 3200.00, 'Debit Card'),
    (4, 8, '2023-09-03', 10, 2000.00, 'Cash'),
    (5, 9, '2023-08-15', 1, 8000.00, 'Credit Card'),
    (5, 10, '2023-08-20', 2, 4000.00, 'Credit Card'),
    (6, 11, '2023-09-01', 5, 150.00, 'Cash'),
    (6, 12, '2023-09-03', 2, 200.00, 'Credit Card'),
    (7, 13, '2023-08-22', 1, 150.00, 'Bank Transfer'),
    (7, 14, '2023-08-25', 3, 1500.00, 'Cash');

-- Insert comprehensive mock data into financial_records table
INSERT INTO financial_records (business_id, date, amount, description, category, transaction_type, payment_method)
VALUES
    (1, '2023-08-01', 5000.00, 'Monthly rent for restaurant', 'Rent', 'Expense', 'Bank Transfer'),
    (1, '2023-08-16', 2000.00, 'Gourmet Burger sales', 'Sales', 'Income', 'Credit Card'),
    (2, '2023-09-02', 375.00, 'Yoga Mat sales', 'Sales', 'Income', 'Credit Card'),
    (2, '2023-09-01', 2000.00, 'Purchase of fitness equipment', 'Inventory', 'Expense', 'Bank Transfer'),
    (3, '2023-08-30', 5000.00, 'Software development project', 'Project Income', 'Income', 'Bank Transfer'),
    (3, '2023-08-20', 150.00, 'IT Support services', 'Service Income', 'Income', 'Credit Card'),
    (4, '2023-09-02', 3200.00, 'Designer Jeans sales', 'Sales', 'Income', 'Debit Card'),
    (4, '2023-09-01', 500.00, 'Purchase of clothing inventory', 'Inventory', 'Expense', 'Bank Transfer'),
    (5, '2023-08-20', 8000.00, 'Brand Campaign Design project', 'Project Income', 'Income', 'Credit Card'),
    (5, '2023-08-15', 4000.00, 'Social Media Management services', 'Service Income', 'Income', 'Credit Card'),
    (6, '2023-09-03', 200.00, 'Tire replacement service', 'Service Income', 'Income', 'Credit Card'),
    (6, '2023-08-30', 150.00, 'Oil change service', 'Service Income', 'Income', 'Cash'),
    (7, '2023-08-25', 1500.00, 'Tree planting service', 'Service Income', 'Income', 'Cash'),
    (7, '2023-08-22', 150.00, 'Garden maintenance service', 'Service Income', 'Income', 'Bank Transfer');
000.00, 'Bank Transfer'),
    (7, 13, '2023-09-02', 40, 3200.00, 'Debit Card'),
    (7, 14, '2023-09-03', 10, 2000.00, 'Cash');


