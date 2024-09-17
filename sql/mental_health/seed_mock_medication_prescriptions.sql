-- Ensure the table exists
CREATE TABLE IF NOT EXISTS medication_prescriptions (
    prescription_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patient_records(patient_id),
    medication VARCHAR(100),
    dosage VARCHAR(20),
    quantity INT,
    prescription_date DATE,
    refills INT,
    prescribing_doctor VARCHAR(100),
    pharmacy_name VARCHAR(100),
    pharmacy_contact VARCHAR(20)
);

-- Insert expanded mock data
INSERT INTO medication_prescriptions (patient_id, medication, dosage, quantity, prescription_date, refills, prescribing_doctor, pharmacy_name, pharmacy_contact)
VALUES
    -- Initial Data
    (1, 'Sertraline', '50mg', 30, '2023-08-25', 2, 'Dr. Emily Clark', 'Central Pharmacy', '555-1111'),
    (2, 'Lamotrigine', '100mg', 30, '2023-08-10', 1, 'Dr. Robert Lee', 'Westside Pharmacy', '555-2222'),
    (3, 'Fluoxetine', '20mg', 30, '2023-07-29', 3, 'Dr. Sarah Green', 'Northgate Pharmacy', '555-3333'),
    (4, 'Clomipramine', '25mg', 30, '2023-07-05', 0, 'Dr. Emily Clark', 'Eastside Pharmacy', '555-4444'),
    (5, 'Paroxetine', '40mg', 30, '2023-09-01', 2, 'Dr. Robert Lee', 'Central Pharmacy', '555-1111'),
    (6, 'Escitalopram', '10mg', 30, '2023-08-05', 1, 'Dr. Emily Clark', 'Westside Pharmacy', '555-2222'),
    (7, 'Sertraline', '50mg', 30, '2023-07-15', 2, 'Dr. Emily Clark', 'Northgate Pharmacy', '555-3333'),
    (8, 'Risperidone', '2mg', 30, '2023-08-20', 0, 'Dr. Robert Lee', 'Eastside Pharmacy', '555-4444'),
    (9, 'Clonazepam', '1mg', 30, '2023-08-10', 1, 'Dr. Sarah Green', 'Central Pharmacy', '555-1111'),
    (10, 'Venlafaxine', '75mg', 30, '2023-08-25', 2, 'Dr. Michael Jones', 'Westside Pharmacy', '555-2222'),

    -- Expanded Data
    (11, 'Diazepam', '5mg', 30, '2023-09-15', 1, 'Dr. Emily Clark', 'Central Pharmacy', '555-1111'),
    (12, 'Lithium', '300mg', 60, '2023-09-10', 2, 'Dr. Sarah Green', 'Northgate Pharmacy', '555-3333'),
    (13, 'Olanzapine', '10mg', 30, '2023-09-01', 0, 'Dr. Michael Jones', 'Eastside Pharmacy', '555-4444'),
    (14, 'Quetiapine', '200mg', 30, '2023-09-12', 3, 'Dr. Robert Lee', 'Westside Pharmacy', '555-2222'),
    (15, 'Alprazolam', '0.5mg', 60, '2023-08-20', 1, 'Dr. Emily Clark', 'Central Pharmacy', '555-1111'),
    (16, 'Mirtazapine', '30mg', 30, '2023-08-25', 2, 'Dr. Sarah Green', 'Northgate Pharmacy', '555-3333'),
    (17, 'Bupropion', '150mg', 90, '2023-08-01', 0, 'Dr. Michael Jones', 'Eastside Pharmacy', '555-4444'),
    (18, 'Lurasidone', '40mg', 30, '2023-08-15', 2, 'Dr. Robert Lee', 'Westside Pharmacy', '555-2222'),
    (19, 'Duloxetine', '60mg', 30, '2023-09-05', 1, 'Dr. Sarah Green', 'Northgate Pharmacy', '555-3333'),
    (20, 'Citalopram', '20mg', 30, '2023-09-20', 0, 'Dr. Emily Clark', 'Central Pharmacy', '555-1111'),

    (21, 'Aripiprazole', '15mg', 30, '2023-09-05', 1, 'Dr. Robert Lee', 'Westside Pharmacy', '555-2222'),
    (22, 'Gabapentin', '300mg', 90, '2023-08-28', 3, 'Dr. Michael Jones', 'Eastside Pharmacy', '555-4444'),
    (23, 'Buspirone', '10mg', 30, '2023-08-12', 2, 'Dr. Sarah Green', 'Northgate Pharmacy', '555-3333'),
    (24, 'Trazodone', '50mg', 30, '2023-09-10', 0, 'Dr. Emily Clark', 'Central Pharmacy', '555-1111'),
    (25, 'Hydroxyzine', '25mg', 30, '2023-08-22', 1, 'Dr. Robert Lee', 'Westside Pharmacy', '555-2222'),
    (26, 'Propranolol', '40mg', 30, '2023-09-02', 2, 'Dr. Michael Jones', 'Eastside Pharmacy', '555-4444'),
    (27, 'Carbamazepine', '200mg', 60, '2023-08-14', 1, 'Dr. Sarah Green', 'Northgate Pharmacy', '555-3333'),
    (28, 'Clonidine', '0.1mg', 30, '2023-09-01', 3, 'Dr. Robert Lee', 'Westside Pharmacy', '555-2222'),
    (29, 'Topiramate', '50mg', 30, '2023-08-25', 0, 'Dr. Emily Clark', 'Central Pharmacy', '555-1111'),
    (30, 'Zolpidem', '10mg', 30, '2023-09-18', 1, 'Dr. Michael Jones', 'Eastside Pharmacy', '555-4444');

