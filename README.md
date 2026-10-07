# Individual Assignment III: PL/SQL GOTO Statements and Functions
* **student: SENGA Aphrodis/20251SEN137**
* **Course:** Database Development with PL/SQL (INSY 8311)
* **Instructor:** Eric Maniraguha




##  Project Summary

For this PL/SQL assignment, I successfully implemented and tested the following components:
1. **Database Setup    00_setup/:** Created and configured the departments and employees tables along with sample data for testing.
2. GOTO Statements 01_goto/:Implemented control-flow scripts using GOTO statements for number classification, salary reviews, and structured rewrites.
3. **Stored Functions 02_functions: Developed modular PL/SQL functions to compute annual salaries using NVL, calculate years of service via MONTHS_BETWEEN, compute tiered income taxes, retrieve department names, and validate payroll records.
4. **Testing & SQL Queries 03_tests/:** Verified function execution by testing them directly inside SQL `SELECT` queries and standalone test scripts within SQL Developer.
5. **Documentation docs/ & screenshots:** Included execution output screenshots and my learning reflection report (REFLECTION.md)

## Technical Highlights & Concepts Applied

* **Control Flow (`GOTO vs Structured IF-ELSIF): Explored label jumps (<<label_name>>) using `GOTO and understood why structured programming alternatives (IF-ELSIF-ELSE) are best practice for maintainability.
* **Null Handling NVL:** Utilized NVL(commission_pct, 0) to prevent null propagation during annual salary and commission math calculations.
* **Date Arithmetic MONTHS_BETWEEN:** Computed exact employee tenure and years of service dynamically from `hire_date` to current system dates.
* **Exception Handling:** Implemented robust error management using EXCEPTION WHEN OTHERS THEN NULL and handling `NO_DATA_FOUND` inside functions.

---

## Git Commit Strategy Meaningful Commits

In compliance with the assignment requirements (at least 5 meaningful commits), the version history was structured progressively:
1. **Commit 1:** Initialize repository structure, .gitignore, and database setup scripts (00_setup).
2. **Commit 2:** Complete Part A control flow scripts and GOTO implementations (01_goto).
3. **Commit 3:** Implement and compile core stored functions (02_functions).
4. **Commit 4:** Add SQL test scripts, SELECT query demonstrations, and output screenshots (03_tests, screenshots).
5. **Commit 5:** Finalize documentation, REFLECTION.md, and complete README.md.

---# How to Run
1. Run **00_setup/create_tables.sql** in Oracle SQL Developer.
2. Compile and run functions in 02_functions.
3. Execute scripts in 01_goto and    03_tests.
4. Check your outputs against the screenshots

