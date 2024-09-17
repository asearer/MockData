-- Ensure the table exists
CREATE TABLE IF NOT EXISTS patient_records (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    location VARCHAR(100),
    diagnoses TEXT[],
    last_session DATE,
    therapist_assigned VARCHAR(100),
    medications TEXT[],
    therapy_plan VARCHAR(100),
    contact_number VARCHAR(20),
    email VARCHAR(100),
    insurance_provider VARCHAR(100),
    insurance_policy_number VARCHAR(50)
);

-- Insert expanded mock data
INSERT INTO patient_records (name, age, gender, location, diagnoses, last_session, therapist_assigned, medications, therapy_plan, contact_number, email, insurance_provider, insurance_policy_number)
VALUES
    -- Initial Data
    ('John Doe', 42, 'Male', 'New York', ARRAY['Generalized Anxiety Disorder', 'Major Depressive Disorder'], '2023-09-02', 'Dr. Emily Clark', ARRAY['Sertraline', 'Alprazolam'], 'CBT - Weekly', '555-1234', 'johndoe@example.com', 'HealthFirst', 'HF123456789'),
    ('Jane Smith', 29, 'Female', 'California', ARRAY['Bipolar Disorder Type II'], '2023-08-28', 'Dr. Robert Lee', ARRAY['Lamotrigine'], 'DBT - Biweekly', '555-5678', 'janesmith@example.com', 'CarePlus', 'CP987654321'),
    ('David Brown', 35, 'Male', 'Texas', ARRAY['Panic Disorder', 'Agoraphobia'], '2023-08-20', 'Dr. Sarah Green', ARRAY['Fluoxetine'], 'Exposure Therapy - Monthly', '555-8765', 'davidbrown@example.com', 'MedSafe', 'MS112233445'),
    ('Linda Williams', 50, 'Female', 'Florida', ARRAY['Obsessive-Compulsive Disorder'], '2023-07-30', 'Dr. Emily Clark', ARRAY['Clomipramine'], 'CBT - Weekly', '555-3456', 'lindawilliams@example.com', 'HealthFirst', 'HF223344556'),
    ('Michael Davis', 27, 'Male', 'Illinois', ARRAY['Post-Traumatic Stress Disorder'], '2023-09-10', 'Dr. Robert Lee', ARRAY['Paroxetine'], 'Trauma-Focused Therapy - Weekly', '555-6789', 'michaeldavis@example.com', 'CarePlus', 'CP556677889'),
    ('Sarah Miller', 33, 'Female', 'Washington', ARRAY['Social Anxiety Disorder'], '2023-08-15', 'Dr. Emily Clark', ARRAY['Escitalopram'], 'CBT - Biweekly', '555-2345', 'sarahmiller@example.com', 'MedSafe', 'MS334455667'),
    ('James Taylor', 49, 'Male', 'Ohio', ARRAY['Major Depressive Disorder'], '2023-07-25', 'Dr. Michael Jones', ARRAY['Sertraline'], 'Interpersonal Therapy - Weekly', '555-9876', 'jamestaylor@example.com', 'HealthFirst', 'HF445566778'),
    ('Patricia Wilson', 40, 'Female', 'Arizona', ARRAY['Schizophrenia'], '2023-09-05', 'Dr. Robert Lee', ARRAY['Risperidone'], 'Psychosocial Therapy - Weekly', '555-5432', 'patriciawilson@example.com', 'CarePlus', 'CP667788990'),
    ('Robert Anderson', 55, 'Male', 'Michigan', ARRAY['Panic Disorder'], '2023-08-20', 'Dr. Sarah Green', ARRAY['Clonazepam'], 'Exposure Therapy - Biweekly', '555-4321', 'robertanderson@example.com', 'MedSafe', 'MS556677889'),
    ('Mary Thomas', 38, 'Female', 'Georgia', ARRAY['Generalized Anxiety Disorder'], '2023-09-02', 'Dr. Michael Jones', ARRAY['Venlafaxine'], 'CBT - Weekly', '555-6543', 'marythomas@example.com', 'HealthFirst', 'HF998877665'),

    -- Expanded Data
    ('Alice Johnson', 31, 'Female', 'Nevada', ARRAY['Bipolar Disorder Type I'], '2023-08-12', 'Dr. Robert Lee', ARRAY['Lithium', 'Quetiapine'], 'DBT - Weekly', '555-2341', 'alicejohnson@example.com', 'CarePlus', 'CP998877665'),
    ('James White', 45, 'Male', 'Texas', ARRAY['Schizophrenia', 'Substance Use Disorder'], '2023-08-18', 'Dr. Sarah Green', ARRAY['Olanzapine', 'Naltrexone'], 'Psychosocial Therapy - Weekly', '555-3214', 'jameswhite@example.com', 'MedSafe', 'MS778899001'),
    ('Emily Davis', 37, 'Female', 'Virginia', ARRAY['Post-Traumatic Stress Disorder', 'Generalized Anxiety Disorder'], '2023-08-25', 'Dr. Emily Clark', ARRAY['Sertraline'], 'Trauma-Focused Therapy - Weekly', '555-7890', 'emilydavis@example.com', 'HealthFirst', 'HF987654321'),
    ('William Harris', 61, 'Male', 'New Jersey', ARRAY['Alzheimer\'s Disease'], '2023-08-10', 'Dr. Michael Jones', ARRAY['Donepezil'], 'Cognitive Therapy - Monthly', '555-6789', 'williamharris@example.com', 'CarePlus', 'CP111122223'),
    ('Sophia Moore', 25, 'Female', 'California', ARRAY['Panic Disorder', 'Generalized Anxiety Disorder'], '2023-09-01', 'Dr. Robert Lee', ARRAY['Clonazepam', 'Escitalopram'], 'CBT - Weekly', '555-7654', 'sophiamoore@example.com', 'HealthFirst', 'HF443322110'),
    ('David Thompson', 29, 'Male', 'Colorado', ARRAY['Obsessive-Compulsive Disorder'], '2023-09-10', 'Dr. Sarah Green', ARRAY['Fluoxetine'], 'CBT - Biweekly', '555-2345', 'davidthompson@example.com', 'MedSafe', 'MS009988776'),
    ('Olivia Martin', 53, 'Female', 'Florida', ARRAY['Major Depressive Disorder'], '2023-09-12', 'Dr. Michael Jones', ARRAY['Venlafaxine'], 'Interpersonal Therapy - Weekly', '555-7891', 'oliviamartin@example.com', 'CarePlus', 'CP987665544'),
    ('Henry Clark', 39, 'Male', 'Ohio', ARRAY['Bipolar Disorder Type I'], '2023-08-22', 'Dr. Emily Clark', ARRAY['Lithium'], 'DBT - Weekly', '555-1230', 'henryclark@example.com', 'HealthFirst', 'HF876543210'),
    ('Charlotte Lewis', 46, 'Female', 'Arizona', ARRAY['Post-Traumatic Stress Disorder', 'Depression'], '2023-08-05', 'Dr. Robert Lee', ARRAY['Paroxetine', 'Quetiapine'], 'Trauma-Focused Therapy - Biweekly', '555-3457', 'charlottelewis@example.com', 'CarePlus', 'CP654321009'),
    ('Daniel Walker', 33, 'Male', 'California', ARRAY['Generalized Anxiety Disorder'], '2023-09-03', 'Dr. Michael Jones', ARRAY['Buspirone'], 'CBT - Weekly', '555-7893', 'danielwalker@example.com', 'MedSafe', 'MS998877665');

