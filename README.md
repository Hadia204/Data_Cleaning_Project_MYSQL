 📊 SQL Data Cleaning Project — World Layoffs Dataset


This project focuses on cleaning and standardizing raw layoff data using MySQL Workbench to make it ready for exploratory data analysis (EDA).


 🎯 Project Objectives:

  
1. Remove Duplicates: Used SQL CTEs and Window Functions (`ROW_NUMBER()` over partition) to isolate and delete duplicate rows.
2. Standardize Data: Cleaned up extra spaces and converted string-formatted dates into proper `DATE` types.
3. Handle NULL & Blank Values: Converted empty strings to `NULL`.
4. Remove Unnecessary Columns & Rows:Dropped temporary processing columns and removed unhelpful null records to optimize 
the final schema.


 💡 Through this project, I gained hands-on experience with:

 
1. Creating staging tables to safely modify data without altering raw inputs.
2. Writing advanced window functions (`ROW_NUMBER()` and `OVER()`) and CTEs
3. Structuring a clean SQL script with comments for maintainability.
