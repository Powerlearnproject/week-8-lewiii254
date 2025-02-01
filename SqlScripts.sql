-- SQL QUERIES
-- Creating Tables
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    email VARCHAR(100),
    location VARCHAR(100)
);

CREATE TABLE Mental_Health_Assessments (
    assessment_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    assessment_date DATE,
    stress_level INT,
    anxiety_level INT,
    depression_level INT,
    sleep_hours INT,
    social_media_usage_hours INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Interventions (
    intervention_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    intervention_date DATE,
    intervention_type VARCHAR(100),
    intervention_duration INT,
    outcome TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Surveys (
    survey_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    survey_date DATE,
    question_1_response TEXT,
    question_2_response TEXT,
    question_3_response TEXT,
    overall_wellbeing_score INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Academic_Performance (
    academic_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    term VARCHAR(50),
    grade VARCHAR(2),
    attendance_percentage DECIMAL(5,2),
    extracurricular_participation BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);





--  SAMPLE DATA
-- Insert sample Users
INSERT INTO Users (name, age, gender, email, location) VALUES
('Alice Johnson', 17, 'Female', 'alice.j@example.com', 'New York'),
('Bob Smith', 16, 'Male', 'bob.s@example.com', 'Los Angeles'),
('Charlie Davis', 18, 'Male', 'charlie.d@example.com', 'Chicago'),
('Diana Prince', 17, 'Female', 'diana.p@example.com', 'Miami'),
('Ethan Hunt', 19, 'Male', 'ethan.h@example.com', 'San Francisco');

-- Insert sample Mental_Health_Assessments
INSERT INTO Mental_Health_Assessments (user_id, assessment_date, stress_level, anxiety_level, depression_level, sleep_hours, social_media_usage_hours) VALUES
(1, '2024-08-01', 7, 5, 4, 6, 3),
(2, '2024-08-01', 6, 6, 5, 5, 4),
(3, '2024-08-01', 8, 7, 6, 4, 5),
(4, '2024-08-01', 5, 4, 3, 7, 2),
(5, '2024-08-01', 9, 8, 7, 3, 6);

-- Insert sample Interventions
INSERT INTO Interventions (user_id, intervention_date, intervention_type, intervention_duration, outcome) VALUES
(1, '2024-08-05', 'Therapy', 60, 'Reduced stress and anxiety'),
(2, '2024-08-06', 'Mindfulness', 30, 'Improved overall well-being'),
(3, '2024-08-07', 'Physical Activity', 45, 'Enhanced mood and energy levels'),
(4, '2024-08-05', 'Therapy', 60, 'Improved sleep quality'),
(5, '2024-08-06', 'Mindfulness', 30, 'Decreased social media usage');

-- Insert sample Surveys
INSERT INTO Surveys (user_id, survey_date, question_1_response, question_2_response, question_3_response, overall_wellbeing_score) VALUES
(1, '2024-08-01', 'Feeling stressed', 'Moderate anxiety', 'Mild depression', 6),
(2, '2024-08-01', 'Occasional stress', 'High anxiety', 'Moderate depression', 5),
(3, '2024-08-01', 'Frequent stress', 'Severe anxiety', 'High depression', 4),
(4, '2024-08-01', 'Low stress', 'Low anxiety', 'No depression', 8),
(5, '2024-08-01', 'Very high stress', 'Severe anxiety', 'Moderate depression', 3);

-- Insert sample Academic_Performance
INSERT INTO Academic_Performance (user_id, term, grade, attendance_percentage, extracurricular_participation) VALUES
(1, 'Fall 2023', 'B', 90.00, TRUE),
(2, 'Fall 2023', 'A', 95.00, TRUE),
(3, 'Fall 2023', 'C', 85.00, FALSE),
(4, 'Fall 2023', 'B', 92.50, TRUE),
(5, 'Fall 2023', 'D', 80.00, FALSE);

MORE DATA
INSERT INTO Users (name, age, gender, email, location) VALUES
('Frank Castle', 17, 'Male', 'frank.c@example.com', 'Houston'),
('Grace Lee', 18, 'Female', 'grace.l@example.com', 'Philadelphia'),
('Henry Ford', 16, 'Male', 'henry.f@example.com', 'Phoenix'),
('Isabella Clark', 17, 'Female', 'isabella.c@example.com', 'San Antonio'),
('Jack Reacher', 19, 'Male', 'jack.r@example.com', 'San Diego'),
('Karen White', 16, 'Female', 'karen.w@example.com', 'Dallas'),
('Liam Neeson', 18, 'Male', 'liam.n@example.com', 'San Jose'),
('Mia Wallace', 17, 'Female', 'mia.w@example.com', 'Austin'),
('Nina Simone', 16, 'Female', 'nina.s@example.com', 'Fort Worth'),
('Oscar Wilde', 19, 'Male', 'oscar.w@example.com', 'Columbus'),
-- More Users...
('Zara Phillips', 17, 'Female', 'zara.p@example.com', 'Seattle');

-- Insert more sample Mental_Health_Assessments
INSERT INTO Mental_Health_Assessments (user_id, assessment_date, stress_level, anxiety_level, depression_level, sleep_hours, social_media_usage_hours) VALUES
(6, '2024-08-02', 6, 4, 3, 7, 2),
(7, '2024-08-02', 7, 6, 4, 6, 3),
(8, '2024-08-02', 8, 7, 5, 5, 4),
(9, '2024-08-02', 5, 3, 2, 8, 1),
(10, '2024-08-02', 9, 8, 7, 4, 5),
(11, '2024-08-03', 4, 2, 1, 9, 0),
(12, '2024-08-03', 6, 5, 4, 7, 2),
(13, '2024-08-03', 7, 6, 5, 6, 3),
(14, '2024-08-03', 8, 7, 6, 5, 4),
(15, '2024-08-03', 5, 4, 3, 7, 2),
-- More Mental_Health_Assessments...
(55, '2024-08-10', 4, 3, 2, 7, 1);

-- Insert more sample Interventions
INSERT INTO Interventions (user_id, intervention_date, intervention_type, intervention_duration, outcome) VALUES
(6, '2024-08-08', 'Therapy', 60, 'Reduced anxiety and improved sleep'),
(7, '2024-08-09', 'Mindfulness', 30, 'Better focus and mood'),
(8, '2024-08-10', 'Physical Activity', 45, 'Increased energy and motivation'),
(9, '2024-08-08', 'Therapy', 60, 'Reduced stress and better sleep'),
(10, '2024-08-09', 'Mindfulness', 30, 'Improved emotional stability'),
(11, '2024-08-10', 'Therapy', 60, 'Decreased anxiety'),
(12, '2024-08-08', 'Physical Activity', 45, 'Improved mental clarity'),
(13, '2024-08-09', 'Mindfulness', 30, 'Increased self-awareness'),
(14, '2024-08-10', 'Therapy', 60, 'Reduced negative thoughts'),
(15, '2024-08-08', 'Physical Activity', 45, 'Better overall well-being'),
-- More Interventions...
(55, '2024-08-15', 'Mindfulness', 30, 'Improved stress management');

-- Insert more sample Surveys
INSERT INTO Surveys (user_id, survey_date, question_1_response, question_2_response, question_3_response, overall_wellbeing_score) VALUES
(6, '2024-08-02', 'Moderate stress', 'Mild anxiety', 'No depression', 7),
(7, '2024-08-02', 'High stress', 'Moderate anxiety', 'Mild depression', 5),
(8, '2024-08-02', 'Severe stress', 'High anxiety', 'Moderate depression', 4),
(9, '2024-08-02', 'Low stress', 'No anxiety', 'No depression', 8),
(10, '2024-08-02', 'Very high stress', 'Severe anxiety', 'High depression', 3),
(11, '2024-08-03', 'Mild stress', 'Moderate anxiety', 'Mild depression', 6),
(12, '2024-08-03', 'Moderate stress', 'High anxiety', 'Moderate depression', 5),
(13, '2024-08-03', 'High stress', 'Severe anxiety', 'High depression', 4),
(14, '2024-08-03', 'Low stress', 'Mild anxiety', 'Mild depression', 7),
(15, '2024-08-03', 'Very high stress', 'Moderate anxiety', 'High depression', 3),
-- More Surveys...
(55, '2024-08-10', 'Low stress', 'Mild anxiety', 'No depression', 7);

-- Insert more sample Academic_Performance
INSERT INTO Academic_Performance (user_id, term, grade, attendance_percentage, extracurricular_participation) VALUES
(6, 'Spring 2024', 'B', 88.00, TRUE),
(7, 'Spring 2024', 'A', 92.00, TRUE),
(8, 'Spring 2024', 'C', 85.00, FALSE),
(9, 'Spring 2024', 'B', 89.50, TRUE),
(10, 'Spring 2024', 'D', 78.00, FALSE),
(11, 'Spring 2024', 'A', 95.00, TRUE),
(12, 'Spring 2024', 'B', 91.00, TRUE),
(13, 'Spring 2024', 'C', 84.00, FALSE),
(14, 'Spring 2024', 'B', 90.00, TRUE),
(15, 'Spring 2024', 'D', 79.00, FALSE),
-- More Academic_Performance...
(55, 'Spring 2024', 'C', 84.00, TRUE);

-- Data Retrieval Queries example
SELECT u.user_id, u.name, u.age, u.gender, u.email, u.location, 
       mha.assessment_date, mha.stress_level, mha.anxiety_level, 
       mha.depression_level, mha.sleep_hours, mha.social_media_usage_hours
FROM Users u
JOIN Mental_Health_Assessments mha ON u.user_id = mha.user_id;

