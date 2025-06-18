use hospital_schema;

CREATE TABLE hospital_info (
  patient_id INT PRIMARY KEY,
  age INT,
  gender VARCHAR(10),
  blood_type VARCHAR(3),
  height_cm FLOAT,
  weight_kg FLOAT,
  bmi FLOAT,
  temperature_c FLOAT,
  heart_rate_bpm INT,
  blood_pressure VARCHAR(10)
);


select * from hospital_info; 

ALTER TABLE hospital_info
ADD systolic INT,
ADD diastolic INT;

UPDATE hospital_info
SET 
  systolic = CAST(SUBSTRING_INDEX(blood_pressure, '/', 1) AS UNSIGNED),
  diastolic = CAST(SUBSTRING_INDEX(blood_pressure, '/', -1) AS UNSIGNED);
  
ALTER TABLE hospital_info
ADD (
  bp_status VARCHAR(20),
  heart_status VARCHAR(20),
  temp_status VARCHAR(20),
  bmi_status VARCHAR(20)
);


UPDATE hospital_info
SET 
  bp_status = CASE
    WHEN systolic >= 130 OR diastolic >= 80 THEN 'High BP'
    WHEN systolic < 90 OR diastolic < 60 THEN 'Low BP'
    ELSE 'Normal BP'
  END,
  
  heart_status = CASE
    WHEN heart_rate_bpm < 60 THEN 'Low HR'
    WHEN heart_rate_bpm > 100 THEN 'High HR'
    ELSE 'Normal HR'
  END,
  
  temp_status = CASE
    WHEN temperature_c >= 38 THEN 'Fever'
    WHEN temperature_c < 36 THEN 'Low Temp'
    ELSE 'Normal Temp'
  END,
  
  bmi_status = CASE
    WHEN bmi < 18.5 THEN 'Underweight'
    WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'Normal'
    WHEN bmi BETWEEN 25 AND 29.9 THEN 'Overweight'
    ELSE 'Obese'
  END;

select * from hospital_info;


