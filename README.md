# Individual Assignment III: PL/SQL GOTO Statements and Functions

* **Course:** Database Development with PL/SQL (INSY 8311)
* **Instructor:** Eric Maniraguha
* **Deadline:** Thursday, October 8, 2026 at 11:59 PM (Strictly enforced)
* **Submission:** Public GitHub repository link via Google Form

---

## 📌 Project Summary

For this PL/SQL assignment, I successfully implemented and tested the following components:
1. **Database Setup (`00_setup/`):** Created and configured the `departments` and `employees` tables along with sample data for testing.
2. **GOTO Statements (`01_goto/`):** Implemented control-flow scripts using `GOTO` statements for number classification, salary reviews, and structured rewrites.
3. **Stored Functions (`02_functions/`):** Developed modular PL/SQL functions to compute annual salaries using `NVL`, calculate years of service via `MONTHS_BETWEEN`, compute tiered income taxes, retrieve department names, and validate payroll records.
4. **Testing & SQL Queries (`03_tests/`):** Verified function execution by testing them directly inside SQL `SELECT` queries and standalone test scripts within SQL Developer.
5. **Documentation (`docs/` & `screenshots/`):** Included execution output screenshots and my learning reflection report (`REFLECTION.md`).

---

## 📂 Repository Structure

```text
plsql-goto-functions-<studentID>-<firstname>/
├── README.md
├── .gitignore
├── 00_setup/
│   └── create_tables.sql
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
├── screenshots/
│   ├── A1_output.png
│   ├── A2_output.png
│   ├── A3_error_and_fix.png
│   ├── A4_output.png
│   ├── B5_select_output.png
│   └── C1_output.png
└── docs/
    └── REFLECTION.md
