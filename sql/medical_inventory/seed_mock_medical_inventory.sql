-- Create the table
CREATE TABLE medical_inventory (
    equipment_id SERIAL PRIMARY KEY,
    equipment_name VARCHAR(100),
    quantity_in_stock INT,
    supplier VARCHAR(100),
    last_ordered DATE,
    order_quantity INT,
    next_delivery_date DATE,
    unit_cost NUMERIC(10, 2),
    total_value NUMERIC(10, 2)
);

-- Insert comprehensive mock data into medical_inventory
INSERT INTO medical_inventory (equipment_name, quantity_in_stock, supplier, last_ordered, order_quantity, next_delivery_date, unit_cost, total_value)
VALUES
    -- Diagnostic Equipment
    ('MRI Scanner', 5, 'MedEquip Corp', '2023-06-15', 1, '2023-09-01', 250000.00, 1250000.00),
    ('X-ray Machine', 3, 'HealthTech Solutions', '2023-07-20', 2, '2023-10-15', 75000.00, 225000.00),
    ('Ultrasound Device', 7, 'BioMed Supplies', '2023-08-05', 3, '2023-09-20', 30000.00, 210000.00),
    ('ECG Machine', 10, 'CardioMed Inc.', '2023-05-10', 5, '2023-09-05', 5000.00, 50000.00),
    ('CT Scanner', 2, 'Precision Imaging Ltd.', '2023-06-30', 1, '2023-11-20', 150000.00, 300000.00),
    
    -- Surgical Instruments
    ('Surgical Lasers', 4, 'SurgiTech', '2023-08-12', 2, '2023-11-10', 45000.00, 180000.00),
    ('Laparoscopic Instruments', 15, 'Minimally Invasive Inc.', '2023-09-01', 10, '2023-10-01', 1200.00, 18000.00),
    ('Anesthesia Machines', 6, 'GasTech Solutions', '2023-07-25', 3, '2023-10-05', 35000.00, 210000.00),
    ('Surgical Tables', 8, 'MedEquip Corp', '2023-06-15', 4, '2023-09-01', 20000.00, 160000.00),
    
    -- Personal Protective Equipment (PPE)
    ('N95 Respirators', 5000, 'SafeWear Inc.', '2023-08-15', 2000, '2023-09-15', 2.50, 12500.00),
    ('Surgical Masks', 8000, 'HealthShield Supplies', '2023-07-20', 5000, '2023-08-30', 0.50, 4000.00),
    ('Face Shields', 3000, 'BioMed Supplies', '2023-09-01', 1000, '2023-09-15', 5.00, 15000.00),
    ('Disposable Gowns', 10000, 'SafeWear Inc.', '2023-08-10', 4000, '2023-09-10', 3.00, 30000.00),
    
    -- Monitoring Devices
    ('Blood Pressure Monitors', 20, 'CardioMed Inc.', '2023-06-01', 10, '2023-08-15', 200.00, 4000.00),
    ('Pulse Oximeters', 150, 'HealthTech Solutions', '2023-07-05', 100, '2023-09-01', 50.00, 7500.00),
    ('Defibrillators', 12, 'LifeSave Technologies', '2023-06-20', 4, '2023-08-25', 1200.00, 14400.00),
    ('Thermometers (Digital)', 500, 'MedEquip Corp', '2023-07-10', 250, '2023-08-25', 25.00, 12500.00),
    
    -- Laboratory Equipment
    ('Blood Analyzers', 6, 'LabTech Solutions', '2023-08-02', 3, '2023-09-20', 50000.00, 300000.00),
    ('Centrifuges', 10, 'Precision Labware', '2023-05-15', 5, '2023-09-10', 3000.00, 30000.00),
    ('Microscopes', 25, 'OpticTech', '2023-07-25', 10, '2023-10-10', 1500.00, 37500.00),
    ('Autoclaves', 5, 'SterilMed Inc.', '2023-08-01', 2, '2023-10-01', 7000.00, 35000.00),
    
    -- Consumable Medical Supplies
    ('IV Drip Sets', 3000, 'HealthPro Supplies', '2023-09-01', 1000, '2023-09-20', 1.50, 4500.00),
    ('Sterile Gloves', 20000, 'SafeWear Inc.', '2023-08-25', 5000, '2023-09-15', 0.10, 2000.00),
    ('Syringes (5ml)', 5000, 'BioMed Supplies', '2023-09-05', 2000, '2023-09-25', 0.50, 2500.00),
    ('Bandages', 10000, 'HealthPro Supplies', '2023-07-30', 5000, '2023-09-10', 0.20, 2000.00);

