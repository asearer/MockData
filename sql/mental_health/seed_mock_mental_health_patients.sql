-- Ensure the table exists
CREATE TABLE IF NOT EXISTS mental_health_patients (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(10),
    address VARCHAR(255),
    contact VARCHAR(20),
    email VARCHAR(255),
    primary_condition VARCHAR(255),
    secondary_condition VARCHAR(255),
    date_first_seen DATE,
    assigned_therapist VARCHAR(255),
    insurance_provider VARCHAR(255),
    emergency_contact_name VARCHAR(255),
    emergency_contact_relation VARCHAR(50),
    emergency_contact_number VARCHAR(20)
);

-- Insert mock data
INSERT INTO mental_health_patients (
    name, dob, gender, address, contact, email, primary_condition, 
    secondary_condition, date_first_seen, assigned_therapist, 
    insurance_provider, emergency_contact_name, emergency_contact_relation, 
    emergency_contact_number
) VALUES
    -- Initial Data
    ('John Doe', '1985-06-15', 'Male', '123 Elm St, City, State', '555-1234', 
    'johndoe@example.com', 'Anxiety', 'Depression', '2023-01-10', 'Dr. Smith', 
    'HealthNet', 'Jane Doe', 'Spouse', '555-5678'),

    ('Alice Johnson', '1990-03-22', 'Female', '456 Oak St, City, State', '555-6789', 
    'alice.johnson@example.com', 'Bipolar Disorder', 'PTSD', '2023-05-15', 'Dr. Johnson', 
    'CareHealth', 'Bob Johnson', 'Husband', '555-1234'),

    ('Robert Smith', '1982-07-30', 'Male', '789 Pine St, City, State', '555-2345', 
    'robert.smith@example.com', 'Schizophrenia', NULL, '2022-12-01', 'Dr. Davis', 
    'MediPlan', 'Mary Smith', 'Sister', '555-6789'),

    ('Emily Davis', '1995-11-20', 'Female', '321 Birch St, City, State', '555-3456', 
    'emily.davis@example.com', 'Depression', 'Anxiety', '2024-02-01', 'Dr. Lee', 
    'FamilyHealth', 'John Davis', 'Father', '555-9876'),

    ('Michael Brown', '1988-08-14', 'Male', '654 Cedar St, City, State', '555-4567', 
    'michael.brown@example.com', 'PTSD', 'Sleep Disorders', '2023-09-25', 'Dr. Taylor', 
    'GlobalCare', 'Sarah Brown', 'Partner', '555-2345'),

    -- Expanded Data
    ('Jennifer Wilson', '1987-02-12', 'Female', '987 Maple St, City, State', '555-5678', 
    'jennifer.wilson@example.com', 'Obsessive-Compulsive Disorder', 'Anxiety', '2022-11-10', 'Dr. Clark', 
    'HealthNet', 'Tom Wilson', 'Brother', '555-6789'),

    ('David Martinez', '1975-05-29', 'Male', '741 Walnut St, City, State', '555-6789', 
    'david.martinez@example.com', 'Major Depressive Disorder', 'Alcohol Use Disorder', '2023-03-10', 'Dr. Smith', 
    'CareHealth', 'Maria Martinez', 'Spouse', '555-1234'),

    ('Linda Thompson', '1992-09-17', 'Female', '852 Spruce St, City, State', '555-7890', 
    'linda.thompson@example.com', 'Borderline Personality Disorder', 'Eating Disorder', '2023-08-25', 'Dr. Johnson', 
    'MediPlan', 'Paul Thompson', 'Father', '555-9876'),

    ('James White', '1969-12-02', 'Male', '159 Birch St, City, State', '555-2345', 
    'james.white@example.com', 'Schizophrenia', 'Substance Use Disorder', '2023-06-15', 'Dr. Davis', 
    'GlobalCare', 'Susan White', 'Daughter', '555-5678'),

    ('Sophia Hernandez', '2000-04-15', 'Female', '258 Cedar St, City, State', '555-3456', 
    'sophia.hernandez@example.com', 'Generalized Anxiety Disorder', 'Panic Disorder', '2023-09-30', 'Dr. Lee', 
    'FamilyHealth', 'Carlos Hernandez', 'Brother', '555-7890'),

    ('William Clark', '1993-11-05', 'Male', '369 Oak St, City, State', '555-9876', 
    'william.clark@example.com', 'Post-Traumatic Stress Disorder', 'Insomnia', '2023-07-20', 'Dr. Taylor', 
    'HealthNet', 'Karen Clark', 'Mother', '555-3456'),

    ('Olivia Walker', '1980-01-21', 'Female', '753 Pine St, City, State', '555-4567', 
    'olivia.walker@example.com', 'Bipolar Disorder', 'Borderline Personality Disorder', '2022-10-05', 'Dr. Clark', 
    'CareHealth', 'Jacob Walker', 'Husband', '555-2345'),

    ('Liam Roberts', '1978-08-10', 'Male', '951 Maple St, City, State', '555-6789', 
    'liam.roberts@example.com', 'Schizophrenia', 'Obsessive-Compulsive Disorder', '2023-03-18', 'Dr. Johnson', 
    'MediPlan', 'Sophia Roberts', 'Daughter', '555-1234'),

    ('Emma Lewis', '2002-12-14', 'Female', '147 Elm St, City, State', '555-2345', 
    'emma.lewis@example.com', 'Anxiety', 'Social Phobia', '2024-01-12', 'Dr. Davis', 
    'GlobalCare', 'David Lewis', 'Father', '555-5678');

