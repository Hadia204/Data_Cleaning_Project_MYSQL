 📊 SQL Data Cleaning Project — World Layoffs Dataset

I took a raw dataset containing global tech layoff records and performed a complete data-cleaning workflow
using MySQL Workbench

 🎯 Project Objectives
Remove Duplicates: Used SQL CTEs and Window Functions (`ROW_NUMBER()` over partition) to isolate and delete duplicate rows.
Standardize Data: Cleaned up extra spaces and converted string-formatted dates into proper `DATE` types.
Handle NULL & Blank Values: Converted empty strings to `NULL`.
Remove Unnecessary Columns & Rows:Dropped temporary processing columns and removed unhelpful null records to optimize 
the final schema.



---

## 💡 What I Learned
Through this project, I gained hands-on experience with:
1. Creating staging tables to safely modify data without altering raw inputs.
2. Writing advanced window functions (`ROW_NUMBER()` and `OVER()`).
3. Dealing with MySQL configuration rules like Safe Update Mode (`SET SQL_SAFE_UPDATES = 0`).
4. Structuring a clean SQL script with comments for maintainability.
