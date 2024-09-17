# **PostgreSQL Mock Data Seeds**

This directory contains a collection of **PostgreSQL seed files** with mock datasets. These seeds cover domains such as mental health, clinical trials, medical inventory, and financial records. They are designed to populate PostgreSQL databases with simulated data for testing, data visualization, and analysis.


---

## **Seed File Descriptions**

### **1. `seed_mock_mental_health_patients.sql`**

This seed file populates the `mental_health_patients` table with mock data about mental health patients, including personal details, medical conditions, and emergency contact information.

#### **Table Structure:**
```sql
CREATE TABLE mental_health_patients (
    patient_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    dob DATE,
    gender VARCHAR(10),
    address TEXT,
    contact VARCHAR(15),
    email VARCHAR(100),
    primary_condition VARCHAR(100),
    secondary_condition VARCHAR(100),
    date_first_seen DATE,
    assigned_therapist VARCHAR(100),
    insurance_provider VARCHAR(100),
    emergency_contact_name VARCHAR(100),
    emergency_contact_relation VARCHAR(50),
    emergency_contact_number VARCHAR(15)
);
```

#### **Sample Data:**
```sql
INSERT INTO mental_health_patients (name, dob, gender, address, contact, email, primary_condition, secondary_condition, date_first_seen, assigned_therapist, insurance_provider, emergency_contact_name, emergency_contact_relation, emergency_contact_number) VALUES
('John Doe', '1985-06-15', 'Male', '123 Elm St, City, State', '555-1234', 'johndoe@example.com', 'Anxiety', 'Depression', '2023-01-10', 'Dr. Smith', 'HealthNet', 'Jane Doe', 'Spouse', '555-5678');
```

---

### **2. `seed_mock_therapy_sessions.sql`**

This seed file populates the `therapy_sessions` table with mock data related to therapy sessions, including session types, patient-therapist interactions, and session outcomes.

#### **Table Structure:**
```sql
CREATE TABLE therapy_sessions (
    session_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES mental_health_patients(patient_id),
    therapist VARCHAR(100),
    session_date DATE,
    duration_minutes INT,
    session_type VARCHAR(100),
    notes TEXT,
    patient_progress VARCHAR(100),
    session_location VARCHAR(100),
    session_mode VARCHAR(50)
);
```

#### **Sample Data:**
```sql
INSERT INTO therapy_sessions (patient_id, therapist, session_date, duration_minutes, session_type, notes, patient_progress, session_location, session_mode) VALUES
(1, 'Dr. Smith', '2023-09-01', 60, 'Cognitive Behavioral Therapy', 'Patient showed improvement in managing anxiety.', 'Moderate improvement', 'Therapy Center A', 'In-person');
```

---

### **3. `seed_mock_medication_prescriptions.sql`**

This seed file populates the `medication_prescriptions` table with mock data on medication prescriptions, including medication names, dosages, and prescribing details.

#### **Table Structure:**
```sql
CREATE TABLE medication_prescriptions (
    prescription_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES mental_health_patients(patient_id),
    medication_name VARCHAR(100),
    dosage VARCHAR(50),
    quantity INT,
    prescription_date DATE,
    refills_left INT,
    prescribing_doctor VARCHAR(100),
    pharmacy VARCHAR(100),
    pharmacy_contact VARCHAR(15)
);
```

#### **Sample Data:**
```sql
INSERT INTO medication_prescriptions (patient_id, medication_name, dosage, quantity, prescription_date, refills_left, prescribing_doctor, pharmacy, pharmacy_contact) VALUES
(1, 'Sertraline', '50 mg', 30, '2023-08-20', 2, 'Dr. Smith', 'Pharmacy A', '555-7890');
```

---

### **4. `seed_mock_clinical_trials.sql`**

This seed file populates the `clinical_trials` table with mock data related to clinical trials, including trial names, phases, participant numbers, and trial status.

#### **Table Structure:**
```sql
CREATE TABLE clinical_trials (
    trial_id SERIAL PRIMARY KEY,
    trial_name VARCHAR(100),
    phase VARCHAR(50),
    start_date DATE,
    end_date DATE,
    participants_enrolled INT,
    status VARCHAR(50),
    primary_outcome VARCHAR(100),
    principal_investigator VARCHAR(100),
    sponsor VARCHAR(100),
    funding_amount DECIMAL(15, 2)
);
```

#### **Sample Data:**
```sql
INSERT INTO clinical_trials (trial_name, phase, start_date, end_date, participants_enrolled, status, primary_outcome, principal_investigator, sponsor, funding_amount) VALUES
('Depression Treatment Trial', 'Phase III', '2022-05-01', '2024-05-01', 200, 'Ongoing', 'Reduction in depressive symptoms', 'Dr. Jane Williams', 'PharmaCo', 5000000.00);
```

---

### **5. `seed_mock_medical_inventory.sql`**

This seed file populates the `medical_inventory` table with mock data related to medical inventory, detailing equipment names, quantities, suppliers, and pricing.

#### **Table Structure:**
```sql
CREATE TABLE medical_inventory (
    inventory_id SERIAL PRIMARY KEY,
    equipment_name VARCHAR(100),
    quantity_in_stock INT,
    supplier VARCHAR(100),
    last_ordered DATE,
    order_quantity INT,
    next_delivery_date DATE,
    unit_cost DECIMAL(10, 2),
    total_value DECIMAL(15, 2)
);
```

#### **Sample Data:**
```sql
INSERT INTO medical_inventory (equipment_name, quantity_in_stock, supplier, last_ordered, order_quantity, next_delivery_date, unit_cost, total_value) VALUES
('Syringes', 500, 'Medical Supplies Co.', '2023-08-01', 1000, '2023-09-01', 0.25, 250.00);
```

---

### **6. `seed_mock_financial_records.sql`**

This seed file populates the `financial_records` table with mock financial transaction data, including transaction amounts, descriptions, and payment methods.

#### **Table Structure:**
```sql
CREATE TABLE financial_records (
    transaction_id SERIAL PRIMARY KEY,
    transaction_date DATE,
    amount DECIMAL(15, 2),
    description TEXT,
    category VARCHAR(50),
    transaction_type VARCHAR(50),
    payment_method VARCHAR(50)
);
```

#### **Sample Data:**
```sql
INSERT INTO financial_records (transaction_date, amount, description, category, transaction_type, payment_method) VALUES
('2023-09-05', 1500.00, 'Medical Equipment Purchase', 'Expense', 'Purchase', 'Bank Transfer');
```

---

## **How to Use**

1. **Ensure PostgreSQL is Installed and Running:**
   Make sure you have PostgreSQL installed and the service is running on your machine.

2. **Run Seed Files:**
   Use the `psql` command to execute each seed file and populate your PostgreSQL database:
   ```bash
   psql -U <username> -d <database_name> -f ./seeds/postgresql/<seed_file_name.sql>
   ```
   For example, to seed the `mental_health_patients` table:
   ```bash
   psql -U my_user -d my_database -f ./seeds/postgresql/seed_mock_mental_health_patients.sql
   ```

3. **Repeat for Other Seed Files:**
   Execute each seed file as needed to populate the respective tables.

4. **Verify Data:**
   After running the seed files, check your PostgreSQL database to ensure the tables have been populated with the mock data.

---