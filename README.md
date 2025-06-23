Medical Data History Analysis Using SQL
Project Overview
This project explores patient and hospital data using Structured Query Language (SQL). With 34 distinct queries, it extracts, transforms, and analyzes insights from real-world hospital records. From identifying common allergies to calculating BMI-based obesity indicators and generating custom patient login credentials, this project showcases how SQL can solve practical healthcare problems.
Objectives
- Analyze patient demographics and medical history
- Detect health patterns using queries on weight, height, diagnosis, and allergies
- Demonstrate SQL skills using joins, aggregations, filtering, and data cleaning
- Derive actionable insights for medical data management
Data Tables Used
- patients
- admissions
- doctors
- province_name
Key Highlights
- Replaced NULL allergy values with 'NKA' to standardize records
- Generated derived fields like BMI classification and temporary passwords
- Joined multiple tables to identify special cases like:
- Dementia & Epilepsy patients
- Patients under specific doctors
- Grouped patients into meaningful bins (e.g., weight brackets, birth decades)
- Aggregated city-wise and province-wise metrics for strategic insights
Sample Query Insight
Query: Show patient IDs and diagnoses for patients admitted multiple times for the same condition.
Insight: Helps identify chronic or recurring health issues, aiding healthcare planning and resource allocation.
Skills Applied
- SQL (joins, subqueries, CASE, filtering, sorting, grouping)
- Data transformation and cleaning
- Analytical thinking through healthcare use cases
- Interpreting structured data for decision-making
  Contributors
- Kruthik Sai Kola
- Sriniketh Reddy Ranamalla
