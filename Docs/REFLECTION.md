# Individual Assignment III: Reflection Report

* **Course:** Database Development with PL/SQL (INSY 8311)
* **Student:** SENGA Aphrodis/ 20252SEN137
* **Date:** October 8, 2026

---

## 1. Key Learnings & Technical Takeaways
* **Control Flow (GOTO vs. Structured Programming):** I learned how to use label jumps (<<label_name>>`) with `GOTO statements for conditional routing. However, I also understood why `GOTO` is discouraged in production environments due to maintenance challenges, and how structured alternatives (`IF-ELSIF-ELSE`) provide safer execution flow.
* **Null Handling with `NVL`:** Implemented `NVL(commission_pct, 0)` to ensure math calculations involving null values do not result in null propagation.
* **Date Arithmetic:** Gained practical experience using `MONTHS_BETWEEN` to accurately calculate employee tenure and years of service dynamically.
* **Stored Functions & Modularity:** Learned how to encapsulate reusable business logic into modular PL/SQL functions (annual salary calculation, tax computation, and payroll validation) that can be invoked directly inside SQL queries.

---

## 2. Challenges Faced & Troubleshooting
* **Compilation Errors:** Initially encountered compilation issues with unhandled exceptions inside functions. I resolved this by properly structuring exception blocks using `EXCEPTION WHEN OTHERS THEN` and handling `NO_DATA_FOUND`.
* **Testing in SQL Developer:** Ensuring that functions returned correct values when embedded inside SQL `SELECT` statements required careful handling of return data types and parameter bindings.

---

## 3. Conclusion
This assignment bridged theoretical control-flow concepts with practical, modular database programming. It significantly improved my proficiency in PL/SQL debugging, error handling, and writing reusable database code in preparation for upcoming assessments.

