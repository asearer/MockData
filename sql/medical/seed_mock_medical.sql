-- Create the table
CREATE TABLE medical_records (
    record_id SERIAL PRIMARY KEY,
    patient_id INT,
    patient_name VARCHAR(100),
    date_of_birth DATE,
    gender VARCHAR(10),
    visit_date DATE,
    diagnosis TEXT,
    treatment_plan TEXT,
    medications TEXT,
    doctor VARCHAR(100),
    visit_notes TEXT,
    follow_up_date DATE
);

-- Insert comprehensive mock data into medical_records
INSERT INTO medical_records (patient_id, patient_name, date_of_birth, gender, visit_date, diagnosis, treatment_plan, medications, doctor, visit_notes, follow_up_date)
VALUES
    -- Cardiology
    (1, 'John Doe', '1980-02-14', 'Male', '2024-01-12', 'Hypertension', 'Lifestyle changes, low-sodium diet', 'Lisinopril 10mg', 'Dr. Emily Clark', 'Patient advised on diet modifications.', '2024-02-12'),
    (2, 'Mary Johnson', '1975-06-25', 'Female', '2024-01-25', 'Atrial Fibrillation', 'Cardiac ablation, anticoagulation', 'Warfarin 5mg', 'Dr. Robert Lee', 'Scheduled for cardiac ablation.', '2024-03-25'),
    (3, 'Michael Smith', '1965-04-18', 'Male', '2024-02-05', 'Coronary Artery Disease', 'Angioplasty, statin therapy', 'Atorvastatin 20mg', 'Dr. Sarah Green', 'Patient advised to undergo angioplasty.', '2024-04-05'),

    -- Diabetes
    (4, 'Linda Brown', '1990-11-10', 'Female', '2024-03-15', 'Type 2 Diabetes Mellitus', 'Insulin therapy, exercise', 'Insulin glargine', 'Dr. Emily Clark', 'Blood glucose poorly controlled, insulin started.', '2024-04-15'),
    (5, 'James Williams', '1950-08-30', 'Male', '2024-02-28', 'Type 1 Diabetes Mellitus', 'Insulin pump therapy', 'Insulin aspart', 'Dr. Michael Jones', 'Patient switched to insulin pump.', '2024-03-28'),

    -- Respiratory Conditions
    (6, 'Jessica Davis', '1995-09-14', 'Female', '2024-01-18', 'Asthma', 'Inhaled corticosteroids, bronchodilators', 'Albuterol inhaler', 'Dr. Sarah Green', 'Patient experienced mild exacerbation, medication adjusted.', '2024-02-18'),
    (7, 'David Wilson', '1983-07-22', 'Male', '2024-02-15', 'Chronic Obstructive Pulmonary Disease (COPD)', 'Smoking cessation, bronchodilators', 'Tiotropium 18mcg', 'Dr. Robert Lee', 'Patient advised on smoking cessation.', '2024-04-15'),

    -- Neurological Conditions
    (8, 'Anna White', '1970-03-01', 'Female', '2024-01-20', 'Parkinson’s Disease', 'Dopamine agonists, physiotherapy', 'Levodopa 100mg', 'Dr. Michael Jones', 'Symptoms managed with medication, physical therapy initiated.', '2024-03-20'),
    (9, 'Thomas Thompson', '1987-05-05', 'Male', '2024-03-02', 'Epilepsy', 'Anticonvulsants', 'Lamotrigine 100mg', 'Dr. Emily Clark', 'Seizure control stable, continue medication.', '2024-06-02'),

    -- Orthopedic Conditions
    (10, 'Emily Garcia', '1960-12-12', 'Female', '2024-01-25', 'Osteoarthritis', 'Joint injections, physical therapy', 'Ibuprofen 400mg', 'Dr. Robert Lee', 'Knee injections administered, therapy recommended.', '2024-03-25'),
    (11, 'Daniel Martinez', '1988-02-27', 'Male', '2024-02-10', 'Herniated Disc', 'Physical therapy, pain management', 'Gabapentin 300mg', 'Dr. Sarah Green', 'Patient referred to physical therapy.', '2024-04-10'),

    -- Gastrointestinal Conditions
    (12, 'Olivia Anderson', '1992-04-09', 'Female', '2024-02-18', 'Irritable Bowel Syndrome (IBS)', 'Dietary changes, fiber supplements', 'Dicyclomine 20mg', 'Dr. Michael Jones', 'Patient advised to increase fiber intake.', '2024-05-18'),
    (13, 'Jacob Hernandez', '1972-12-17', 'Male', '2024-03-20', 'Gastroesophageal Reflux Disease (GERD)', 'Proton pump inhibitors, lifestyle changes', 'Omeprazole 40mg', 'Dr. Robert Lee', 'Advised on diet, continue PPI therapy.', '2024-06-20'),

    -- Dermatology
    (14, 'Sophia Clark', '1985-01-14', 'Female', '2024-01-30', 'Psoriasis', 'Topical steroids, UV therapy', 'Betamethasone cream', 'Dr. Emily Clark', 'Started on topical therapy, follow up in 3 months.', '2024-04-30'),
    (15, 'William Lopez', '1996-08-22', 'Male', '2024-02-20', 'Acne Vulgaris', 'Topical retinoids, oral antibiotics', 'Doxycycline 100mg', 'Dr. Sarah Green', 'Acne improving, continue treatment.', '2024-04-20'),

    -- Infectious Diseases
    (16, 'Isabella Robinson', '1982-05-30', 'Female', '2024-03-10', 'HIV Infection', 'Antiretroviral therapy (ART)', 'Tenofovir/emtricitabine', 'Dr. Michael Jones', 'Viral load undetectable, ART well tolerated.', '2024-06-10'),
    (17, 'Joshua Moore', '1994-10-18', 'Male', '2024-03-25', 'Tuberculosis', 'Anti-tubercular therapy', 'Isoniazid, Rifampin', 'Dr. Robert Lee', 'Started on full course of anti-TB drugs.', '2024-09-25'),

    -- Mental Health
    (18, 'Abigail Thompson', '1989-07-12', 'Female', '2024-01-15', 'Generalized Anxiety Disorder', 'Cognitive behavioral therapy (CBT), SSRIs', 'Sertraline 50mg', 'Dr. Sarah Green', 'Patient started on therapy, medication titrated.', '2024-04-15'),
    (19, 'Christopher Hall', '1976-11-22', 'Male', '2024-02-12', 'Major Depressive Disorder', 'Antidepressants, psychotherapy', 'Escitalopram 20mg', 'Dr. Emily Clark', 'Mood improving, continue current regimen.', '2024-05-12'),

    -- Pediatric Conditions
    (20, 'Mia Martinez', '2015-05-15', 'Female', '2024-03-05', 'Asthma', 'Inhaled corticosteroids, bronchodilators', 'Fluticasone inhaler', 'Dr. Michael Jones', 'Symptoms controlled, follow-up in 6 months.', '2024-09-05'),
    (21, 'Lucas Young', '2010-07-29', 'Male', '2024-02-28', 'Attention-Deficit/Hyperactivity Disorder (ADHD)', 'Behavioral therapy, stimulant medication', 'Methylphenidate 10mg', 'Dr. Robert Lee', 'Patient doing well on therapy and medication.', '2024-05-28');

