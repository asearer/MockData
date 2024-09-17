-- Insert expanded mock data for clinical trials
INSERT INTO clinical_trials (trial_name, phase_id, start_date, end_date, participants_enrolled, status, primary_outcome, investigator_id, sponsor_id, funding_amount, trial_location, trial_type, eligibility_criteria, study_design, adverse_events_reported)
VALUES
    -- Existing trials
    ('Diabetes Medication Efficacy', 3, '2022-01-15', '2023-12-15', 150, 'Ongoing', 'Reduction in HbA1c levels', 1, 1, 500000.00, 'New York, NY', 'Interventional', 'Inclusion: Type 2 diabetes; Exclusion: Type 1 diabetes', 'Randomized controlled trial', 3),
    ('New Antidepressant Trial', 2, '2023-03-10', '2024-03-10', 200, 'Recruiting', 'Decrease in depression symptoms', 2, 2, 750000.00, 'Chicago, IL', 'Interventional', 'Inclusion: Major depressive disorder; Exclusion: Bipolar disorder', 'Double-blind randomized', 4),
    ('Panic Disorder Therapy Study', 1, '2023-06-01', '2024-06-01', 75, 'Completed', 'Reduction in panic attacks', 3, 3, 250000.00, 'Los Angeles, CA', 'Interventional', 'Inclusion: Panic disorder; Exclusion: Substance abuse', 'Randomized control trial', 2),
    ('Schizophrenia Medication Effectiveness', 3, '2021-09-01', '2024-09-01', 100, 'Ongoing', 'Improvement in psychotic symptoms', 4, 4, 1000000.00, 'San Francisco, CA', 'Interventional', 'Inclusion: Schizophrenia; Exclusion: Neurodegenerative diseases', 'Double-blind placebo-controlled', 5),
    ('Hypertension Drug Efficacy', 2, '2023-05-01', '2024-05-01', 200, 'Recruiting', 'Reduction in systolic and diastolic blood pressure', 1, 2, 600000.00, 'Los Angeles, CA', 'Interventional', 'Inclusion: Adults with hypertension; Exclusion: History of heart attack', 'Randomized controlled trial', 3),
    ('Asthma Inhaler Study', 2, '2023-09-01', '2024-09-01', 150, 'Ongoing', 'Improvement in asthma control score', 2, 3, 450000.00, 'Miami, FL', 'Interventional', 'Inclusion: Adults with asthma; Exclusion: Chronic lung disease', 'Double-blind randomized', 4),
    ('Osteoporosis Treatment Study', 3, '2022-12-01', '2024-12-01', 180, 'Recruiting', 'Increased bone mineral density', 3, 4, 700000.00, 'Dallas, TX', 'Interventional', 'Inclusion: Postmenopausal women with osteoporosis; Exclusion: Kidney disease', 'Randomized control trial', 6),
    ('HIV Vaccine Efficacy', 3, '2023-01-01', '2025-01-01', 300, 'Ongoing', 'Prevention of HIV infection', 4, 5, 1200000.00, 'Atlanta, GA', 'Interventional', 'Inclusion: High-risk individuals; Exclusion: Existing HIV infection', 'Randomized placebo-controlled', 10),
    ('Parkinson’s Disease Drug Trial', 3, '2023-04-01', '2025-04-01', 250, 'Recruiting', 'Improvement in motor function', 5, 6, 900000.00, 'San Diego, CA', 'Interventional', 'Inclusion: Patients with Parkinson’s disease; Exclusion: Uncontrolled medical conditions', 'Double-blind randomized', 8),
    ('Multiple Sclerosis Relapse Prevention', 4, '2022-07-01', '2024-07-01', 220, 'Ongoing', 'Reduction in relapse rate', 6, 1, 800000.00, 'Denver, CO', 'Interventional', 'Inclusion: Patients with relapsing MS; Exclusion: Progressive MS', 'Randomized controlled trial', 12),

    -- Additional trials
    ('Alzheimer’s Disease Cognitive Improvement', 3, '2023-02-01', '2025-02-01', 300, 'Recruiting', 'Improvement in cognitive function', 7, 7, 1100000.00, 'Boston, MA', 'Interventional', 'Inclusion: Mild to moderate Alzheimer’s; Exclusion: Severe dementia', 'Randomized placebo-controlled', 7),
    ('Chronic Kidney Disease Management', 3, '2023-04-01', '2025-04-01', 250, 'Recruiting', 'Slowing of kidney function decline', 8, 8, 950000.00, 'Seattle, WA', 'Interventional', 'Inclusion: Chronic kidney disease stage 3-4; Exclusion: Dialysis patients', 'Double-blind randomized', 9),
    ('Crohn’s Disease New Treatment Study', 2, '2023-07-01', '2024-07-01', 180, 'Recruiting', 'Reduction in Crohn’s disease activity index', 9, 9, 500000.00, 'Philadelphia, PA', 'Interventional', 'Inclusion: Adults with Crohn’s disease; Exclusion: Complicated cases', 'Randomized control trial', 6),
    ('Breast Cancer New Therapy', 2, '2023-08-01', '2024-08-01', 220, 'Recruiting', 'Tumor shrinkage', 10, 10, 800000.00, 'Houston, TX', 'Interventional', 'Inclusion: Stage II-III breast cancer; Exclusion: Metastatic disease', 'Double-blind randomized', 5),
    ('Rheumatoid Arthritis Drug Efficacy', 3, '2022-11-01', '2024-11-01', 250, 'Ongoing', 'Reduction in joint pain and inflammation', 11, 11, 850000.00, 'Minneapolis, MN', 'Interventional', 'Inclusion: Adults with rheumatoid arthritis; Exclusion: Active infections', 'Randomized controlled trial', 8),
    ('General Anesthesia Effectiveness', 1, '2024-01-01', '2025-01-01', 150, 'Recruiting', 'Patient recovery time', 12, 12, 400000.00, 'San Jose, CA', 'Interventional', 'Inclusion: Patients scheduled for elective surgery; Exclusion: Contraindications to anesthesia', 'Randomized control trial', 4);

-- Insert additional mock data for trial sites
INSERT INTO trial_sites (trial_id, site_name, location, principal_investigator)
VALUES
    (1, 'New York Medical Center', 'New York, NY', 1),
    (2, 'Chicago Health Clinic', 'Chicago, IL', 2),
    (3, 'Los Angeles Research Institute', 'Los Angeles, CA', 3),
    (4, 'San Francisco Medical Research', 'San Francisco, CA', 4),
    (5, 'Miami Wellness Center', 'Miami, FL', 2),
    (6, 'Dallas Research Hospital', 'Dallas, TX', 3),
    (7, 'Boston Alzheimer’s Clinic', 'Boston, MA', 7),
    (8, 'Seattle Kidney Institute', 'Seattle, WA', 8),
    (9, 'Philadelphia Gastro Research', 'Philadelphia, PA', 9),
    (10, 'Houston Oncology Clinic', 'Houston, TX', 10),
    (11, 'Minneapolis Rheumatology Center', 'Minneapolis, MN', 11),
    (12, 'San Jose Surgical Center', 'San Jose, CA', 12),
    (13, 'Washington DC Clinical Trials Unit', 'Washington DC', 1),
    (14, 'Boston Gastroenterology Clinic', 'Boston, MA', 2),
    (15, 'San Diego Health Research', 'San Diego, CA', 5),
    (16, 'Atlanta Clinical Research Center', 'Atlanta, GA', 6);

-- Insert additional mock data for trial arms
INSERT INTO trial_arms (trial_id, arm_name, description, number_of_participants)
VALUES
    (1, 'High Dose Arm', 'Participants receiving high dose of diabetes medication', 75),
    (1, 'Low Dose Arm', 'Participants receiving low dose of diabetes medication', 75),
    (2, 'Standard Therapy Arm', 'Participants receiving standard antidepressant therapy', 100),
    (2, 'Experimental Therapy Arm', 'Participants receiving new antidepressant therapy', 100),
    (3, 'Therapy Arm', 'Participants receiving new panic disorder therapy', 40),
    (3, 'Placebo Arm', 'Participants receiving placebo', 35),
    (4, 'Medication Arm', 'Participants receiving new schizophrenia medication', 50),
    (4, 'Placebo Arm', 'Participants receiving placebo', 50),
    (5, 'High Dose Arm', 'Participants receiving high dose hypertension drug', 100),
    (5, 'Low Dose Arm', 'Participants receiving low dose hypertension drug', 100),
    (6, 'Standard Inhaler Arm', 'Participants using standard inhaler', 75),
    (6, 'New Inhaler Arm', 'Participants using new inhaler formulation', 75),
    (7, 'Active Treatment Arm', 'Participants receiving osteoporosis treatment', 90),
    (7, 'Control Arm', 'Participants receiving placebo', 90),
    (8, 'Vaccine Arm', 'Participants receiving HIV vaccine', 150),
    (8, 'Placebo Arm', 'Participants receiving placebo', 150),
    (9, 'Medication A Arm', 'Participants receiving new Parkinson’s medication A', 125),
    (9, 'Medication B Arm', 'Participants receiving new Parkinson’s medication B', 125),
    (10, 'Relapse Prevention Arm', 'Participants receiving relapse prevention therapy', 110),
    (10, 'Control Arm', 'Participants receiving standard MS therapy', 110),
    (11, 'Cognitive Therapy Arm', 'Participants receiving cognitive improvement therapy', 150),
    (11, 'Placebo Arm', 'Participants receiving placebo', 150),
    (12, 'Kidney Protection Arm', 'Participants receiving new kidney protection medication', 125),
    (12, 'Control Arm', 'Participants receiving standard care', 125),
    (13, 'Standard Treatment Arm', 'Participants receiving standard treatment for Crohn’s disease', 90),
    (13, 'New Drug Arm', 'Participants receiving new Crohn’s disease drug', 90),
    (14, 'New Therapy Arm', 'Participants receiving new breast cancer therapy', 110),
    (14, 'Placebo Arm', 'Participants receiving placebo', 110),
    (15, 'Standard RA Therapy Arm', 'Participants receiving standard RA therapy', 125),
    (15, 'New RA Therapy Arm', 'Participants receiving new RA therapy', 125),
    (16, 'General Anesthesia Arm', 'Participants receiving general anesthesia', 75),
    (16, 'Sedation Arm', 'Participants receiving sedation', 75);

-- Insert additional mock data for patient demographics
INSERT INTO patient_demographics (trial_id, age_group, male_percentage, female_percentage, other_percentage, avg_weight_kg, avg_height_cm, ethnicity_distribution)
VALUES
    (1, '40-49', 62.00, 38.00, 0.00, 85.00, 178.00, '{"White": 60, "Asian": 25, "Black": 10, "Hispanic": 5}'),
    (2, '30-39', 52.00, 48.00, 0.00, 70.00, 172.00, '{"White": 55, "Asian": 30, "Black": 10, "Hispanic": 5}'),
    (3, '60-69', 58.00, 42.00, 0.00, 77.00, 165.00, '{"White": 65, "Asian": 20, "Black": 10, "Hispanic": 5}'),
    (4, '25-34', 50.00, 50.00, 0.00, 72.00, 168.00, '{"White": 60, "Asian": 25, "Black": 10, "Hispanic": 5}'),
    (5, '50-59', 65.00, 35.00, 0.00, 80.00, 177.00, '{"White": 55, "Asian": 25, "Black": 15, "Hispanic": 5}'),
    (6, '45-54', 62.00, 38.00, 0.00, 82.00, 175.00, '{"White": 70, "Asian": 15, "Black": 10, "Hispanic": 5}'),
    (7, '70-79', 60.00, 40.00, 0.00, 70.00, 160.00, '{"White": 50, "Asian": 30, "Black": 15, "Hispanic": 5}'),
    (8, '35-44', 55.00, 45.00, 0.00, 75.00, 172.00, '{"White": 65, "Asian": 20, "Black": 10, "Hispanic": 5}'),
    (9, '20-29', 48.00, 52.00, 0.00, 68.00, 170.00, '{"White": 60, "Asian": 20, "Black": 15, "Hispanic": 5}'),
    (10, '30-39', 50.00, 50.00, 0.00, 73.00, 174.00, '{"White": 60, "Asian": 25, "Black": 10, "Hispanic": 5}'),
    (11, '55-64', 57.00, 43.00, 0.00, 79.00, 176.00, '{"White": 65, "Asian": 20, "Black": 10, "Hispanic": 5}'),
    (12, '40-49', 60.00, 40.00, 0.00, 77.00, 172.00, '{"White": 55, "Asian": 25, "Black": 15, "Hispanic": 5}'),
    (13, '30-39', 52.00, 48.00, 0.00, 70.00, 173.00, '{"White": 60, "Asian": 25, "Black": 10, "Hispanic": 5}'),
    (14, '45-54', 55.00, 45.00, 0.00, 75.00, 170.00, '{"White": 65, "Asian": 20, "Black": 10, "Hispanic": 5}'),
    (15, '60-69', 60.00, 40.00, 0.00, 80.00, 175.00, '{"White": 55, "Asian": 25, "Black": 15, "Hispanic": 5}'),
    (16, '20-29', 50.00, 50.00, 0.00, 68.00, 169.00, '{"White": 60, "Asian": 20, "Black": 15, "Hispanic": 5}');

-- Insert additional mock data for adverse events
INSERT INTO adverse_events (trial_id, event_name, severity, occurrence_date, description)
VALUES
    (1, 'Fatigue', 'Moderate', '2023-07-01', 'Moderate fatigue reported by some participants.'),
    (2, 'Dry Mouth', 'Mild', '2023-10-01', 'Mild dry mouth observed in several participants.'),
    (3, 'Joint Pain', 'Moderate', '2023-11-01', 'Moderate joint pain experienced by participants.'),
    (4, 'Rash', 'Mild', '2024-03-01', 'Mild rash reported at the injection site.'),
    (5, 'Dizziness', 'Severe', '2024-05-01', 'Severe dizziness affecting daily activities.'),
    (6, 'Nausea', 'Moderate', '2024-07-01', 'Moderate nausea reported during the trial.'),
    (7, 'Headache', 'Mild', '2024-02-01', 'Mild headaches reported during therapy.'),
    (8, 'Back Pain', 'Moderate', '2024-04-01', 'Moderate back pain experienced by several participants.'),
    (9, 'Abdominal Pain', 'Severe', '2024-06-01', 'Severe abdominal pain experienced by a few participants.'),
    (10, 'Fatigue', 'Moderate', '2024-07-01', 'Moderate fatigue observed in some participants.'),
    (11, 'Nausea', 'Mild', '2024-08-01', 'Mild nausea reported during the study.'),
    (12, 'Confusion', 'Severe', '2024-09-01', 'Severe confusion reported in a subset of participants.'),
    (13, 'Insomnia', 'Moderate', '2024-01-15', 'Moderate insomnia observed in participants.'),
    (14, 'Weight Loss', 'Moderate', '2024-02-15', 'Moderate weight loss reported by some participants.'),
    (15, 'Mood Swings', 'Mild', '2024-03-15', 'Mild mood swings observed during the trial.'),
    (16, 'Drowsiness', 'Moderate', '2024-04-15', 'Moderate drowsiness reported by several participants.');



