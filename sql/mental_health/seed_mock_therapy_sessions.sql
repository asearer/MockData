-- Create the table
CREATE TABLE therapy_sessions (
    session_id SERIAL PRIMARY KEY,
    patient_id INT REFERENCES patient_records(patient_id),
    therapist VARCHAR(100),
    session_date DATE,
    duration_minutes INT,
    session_type VARCHAR(100),
    notes TEXT,
    patient_progress VARCHAR(100),
    session_location VARCHAR(100),
    session_mode VARCHAR(20) -- In-person, Online
);

-- Insert mock data
INSERT INTO therapy_sessions (patient_id, therapist, session_date, duration_minutes, session_type, notes, patient_progress, session_location, session_mode)
VALUES
    -- Existing Patients
    (1, 'Dr. Emily Clark', '2023-09-02', 60, 'Cognitive Behavioral Therapy', 'Discussed anxiety triggers and coping mechanisms. Introduced deep breathing techniques.', 'Moderate improvement', 'Office', 'In-person'),
    (2, 'Dr. Robert Lee', '2023-08-28', 45, 'Dialectical Behavior Therapy', 'Focused on emotional regulation and impulse control.', 'Slight improvement', 'Office', 'In-person'),
    (3, 'Dr. Sarah Green', '2023-08-20', 50, 'Exposure Therapy', 'Patient practiced exposure to public spaces. Anxiety levels high but manageable.', 'Gradual progress', 'Office', 'In-person'),
    (4, 'Dr. Emily Clark', '2023-07-30', 60, 'Cognitive Behavioral Therapy', 'Worked on OCD-related thought patterns. Homework assigned.', 'Stable', 'Office', 'In-person'),
    (5, 'Dr. Robert Lee', '2023-09-10', 75, 'Trauma-Focused Therapy', 'Discussed flashbacks and avoidance behavior. Safety plan created.', 'Significant improvement', 'Online', 'Online'),
    (6, 'Dr. Emily Clark', '2023-08-15', 45, 'Cognitive Behavioral Therapy', 'Reviewed social interactions and anxiety levels. Role-playing exercises performed.', 'Moderate improvement', 'Office', 'In-person'),
    (7, 'Dr. Michael Jones', '2023-07-25', 60, 'Interpersonal Therapy', 'Explored interpersonal conflicts and feelings of guilt.', 'Stable', 'Office', 'In-person'),
    (8, 'Dr. Robert Lee', '2023-09-05', 90, 'Psychosocial Therapy', 'Discussed medication compliance and managing daily activities.', 'Slight improvement', 'Online', 'Online'),
    (9, 'Dr. Sarah Green', '2023-08-20', 50, 'Exposure Therapy', 'Patient practiced controlled exposure to anxiety-inducing situations.', 'Gradual improvement', 'Office', 'In-person'),
    (10, 'Dr. Michael Jones', '2023-09-02', 60, 'Cognitive Behavioral Therapy', 'Focused on cognitive distortions and anxiety management.', 'Significant improvement', 'Office', 'In-person'),
    
    -- Additional Data for New Patients
    (11, 'Dr. Robert Lee', '2023-09-12', 50, 'Trauma-Focused Therapy', 'Explored past trauma and the impact on current relationships. Patient responded well to techniques.', 'Moderate improvement', 'Office', 'In-person'),
    (12, 'Dr. Emily Clark', '2023-08-18', 45, 'Cognitive Behavioral Therapy', 'Worked on managing social anxiety through exposure exercises.', 'Slight improvement', 'Office', 'In-person'),
    (13, 'Dr. Michael Jones', '2023-07-30', 60, 'Psychodynamic Therapy', 'Explored unconscious thoughts and childhood trauma. Patient highly engaged.', 'Significant progress', 'Office', 'In-person'),
    (14, 'Dr. Sarah Green', '2023-08-05', 75, 'Exposure Therapy', 'Patient encountered high anxiety in social situations, but managed to stay calm.', 'Gradual improvement', 'Office', 'In-person'),
    (15, 'Dr. Robert Lee', '2023-07-20', 60, 'Dialectical Behavior Therapy', 'Patient learned new techniques for regulating emotional responses.', 'Moderate improvement', 'Online', 'Online'),
    (16, 'Dr. Emily Clark', '2023-08-25', 45, 'Cognitive Behavioral Therapy', 'Discussion on handling obsessive thoughts. Homework included journaling.', 'Stable', 'Office', 'In-person'),
    (17, 'Dr. Michael Jones', '2023-09-01', 60, 'Mindfulness-Based Therapy', 'Introduced mindfulness techniques for coping with stress. Patient practiced at home.', 'Moderate progress', 'Online', 'Online'),
    (18, 'Dr. Sarah Green', '2023-09-15', 90, 'Cognitive Behavioral Therapy', 'In-depth discussion on managing panic attacks. Practiced grounding techniques.', 'Significant improvement', 'Office', 'In-person'),
    (19, 'Dr. Robert Lee', '2023-09-07', 60, 'Trauma-Focused Therapy', 'Patient showed resilience during recall of traumatic events. Developed new coping strategies.', 'Moderate improvement', 'Online', 'Online'),
    (20, 'Dr. Emily Clark', '2023-09-11', 45, 'Cognitive Behavioral Therapy', 'Worked on addressing irrational fears. Patient completed assigned homework on time.', 'Slight improvement', 'Office', 'In-person');

