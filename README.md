# Diabetes-Analytics-Project
This project analyzes diabetes risk factors using SQL and Tableau. It explores trends in demographics, lifestyle, and health metrics. Dashboards visualize patterns in HbA1c, BMI, glucose, and highlight high-risk patient groups for clinical insights.

## Dashboards Included:

### 1. Risk Score Trend (Multi-Line Chart)
- Displays number of people across different Risk Scores
- Line chart separated by Age Group or Gender (if filtered)
- Shows which risk levels dominate the population

### 2. BMI vs HbA1c Scatter Plot
- Explores correlation between BMI and HbA1c values
- Uses color to represent Risk Score or Smoking Status
- Helps identify outliers and potential clusters

### 3. Age Group Distribution (Pie Chart)
- Visualizes the proportion of patients in each age group
- Useful for demographic targeting and understanding dataset balance

### 4. Age Group Distribution (Pie Chart)
- Pie chart showing the percentage of the patient population within each Age Group
- Helps contextualize other dashboards by visualizing demographic weight

## Files
- `diabetes_analysis.sql` – SQL queries used for analysis
- `diabetes_dashboard.twb` – Tableau workbook with a dashboard with 4 sheets

## Insights
- Most patients fall into Risk Scores 2 and 3
- Higher BMI and HbA1c concentrations appear in sedentary smokers
- Adults aged 30–60 represent the majority of the population

## Tools Used
- MySQL
- Tableau Public
