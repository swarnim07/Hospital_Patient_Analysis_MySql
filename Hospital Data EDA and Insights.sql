use hospital_schema;

/* Q1. % of patients with high blood pressure */

SELECT 
  ROUND(100 * SUM(bp_status = 'High BP') / COUNT(*), 2) AS high_bp_percentage
FROM hospital_info;

/* Q2. Count of obese patients by gender */

SELECT gender, COUNT(*) AS obese_count
FROM hospital_info
WHERE bmi_status = 'Obese'
GROUP BY gender;


/* Q3. Avg heart rate and temperature by gender */

SELECT gender,
       ROUND(AVG(heart_rate_bpm), 1) AS avg_hr,
       ROUND(AVG(temperature_c), 1) AS avg_temp
FROM hospital_info
GROUP BY gender;

/* Q4. Patients with both High BP and High HR */

SELECT COUNT(*) AS high_risk_patients
FROM hospital_info
WHERE bp_status = 'High BP' AND heart_status = 'High HR';

/* Q5. Avg BMI by Age Group */

SELECT 
  CASE
    WHEN age < 20 THEN '<20'
    WHEN age BETWEEN 20 AND 39 THEN '20-39'
    WHEN age BETWEEN 40 AND 59 THEN '40-59'
    ELSE '60+'
  END AS age_group,
  ROUND(AVG(bmi), 2) AS avg_bmi
FROM hospital_info
GROUP BY age_group;

/* Q6. Distribution of Blood Types */

SELECT blood_type, COUNT(*) AS total
FROM hospital_info
GROUP BY blood_type
ORDER BY total DESC;

/* Q7. Top 5 Oldest Patients with High BP */

SELECT patient_id, age, bp_status
FROM hospital_info
WHERE bp_status = 'High BP'
ORDER BY age DESC
LIMIT 5;

/*  Q8. How Many Have Fever and High HR */

SELECT COUNT(*) AS fever_high_hr
FROM hospital_info
WHERE temp_status = 'Fever' AND heart_status = 'High HR';

/* Q9. Average BMI per Blood Group */

SELECT blood_type, ROUND(AVG(bmi), 2) AS avg_bmi
FROM hospital_info
GROUP BY blood_type;

/*  Q10. Which Gender Has More High BP Patients */

SELECT gender, COUNT(*) AS high_bp_count
FROM hospital_info
WHERE bp_status = 'High BP'
GROUP BY gender
ORDER BY high_bp_count DESC;


