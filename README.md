# Hospital Patient Analysis MySql

✅ 1. 🚀 Project Title
Hospital Patient Health Analysis Using SQL
An end-to-end data analytics project involving data cleaning, transformation, and EDA using MySQL Workbench.

✅ 2. 📌 Problem Statement
The objective of this project is to analyze health records of hospital patients to uncover medical patterns and critical conditions related to blood pressure, heart rate, temperature, and BMI. The analysis aims to:

Identify patients with abnormal vital signs.

Detect health trends by age, gender, and blood type.

Help hospitals prioritize care based on risk indicators.

✅ 3. 🧰 Tools Used
Tool/Tech	Purpose
MySQL Workbench	Database creation, transformation, and analysis
SQL	Data cleaning, feature engineering, and EDA
Excel / CSV	Initial data source (imported as raw file)

✅ 4. 🧱 Project Structure
File Name	Description
hospital_data_cleaning.sql	Raw data import, schema creation, transformations
hospital_eda_insights.sql	Exploratory data analysis, queries, and insights
README.md	Project overview, queries, and outcomes
hospital_dataset.csv	The dataset (1000 rows, anonymized)

✅ 5. 📊 Dataset Description
Column Name	Description
patient_id	Unique identifier
age	Patient’s age (years)
gender	Male / Female
blood_type	A / B / AB / O
height_cm	Patient’s height in cm
weight_kg	Patient’s weight in kg
bmi	Calculated BMI
temperature_c	Body temperature in Celsius
heart_rate_bpm	Heart rate in beats per minute
blood_pressure	String format: systolic/diastolic (e.g., 130/85)

✅ 6. 🧼 Data Cleaning & Transformation Highlights
Split blood_pressure into systolic and diastolic values.

Created health status indicators using CASE:

bp_status → Normal BP, High BP, Low BP

heart_status → Normal HR, High HR, Low HR

temp_status → Fever, Low Temp, Normal Temp

bmi_status → Underweight, Normal, Overweight, Obese

✅ 7.Questions Answered
#	Question
1	What percentage of patients have high blood pressure?

2	How does obesity vary by gender?

3	What's the average heart rate and temperature by gender?

4	How many patients have both high BP and high HR?

5	What is the average BMI by age group?

6	How is blood type distributed among patients?

7	Who are the oldest patients with high BP?

8	How many have both fever and high HR?

9	What's the average BMI per blood type?

10	Which gender has more high BP patients?

✅ 8. 📌 Key Insights & Outcomes
Insight #	Description

🩺 1	~X% of patients have high blood pressure — risk of hypertension prevalent

⚖️ 2	Obesity is more common in males, especially age 40+

🧬 3	Blood Type O is most common in the dataset

💓 4	5% of patients have both fever and high heart rate — high-risk category

📊 5	BMI increases consistently with age

👵 6	Patients above 60 have significantly more high BP cases

💉 7	Blood Type AB had the highest average BMI

📈 8	Female patients had slightly higher average heart rates than males
