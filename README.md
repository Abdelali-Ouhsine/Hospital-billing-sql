# 🏥 Hospital Billing Database — SQL Project

A relational database project built around a real-world hospital billing workflow.  
The schema models the complete patient journey: care delivery → billing → insurance payment → adjustments & accounts receivable.

---

## 🗃️ Database Schema

The database is composed of **1 fact table** and **8 dimension tables**:

| Table | Description |
|---|---|
| `FactTable` | Core billing transactions (charges, payments, adjustments) |
| `DimPatient` | Patient demographics and contact information |
| `DimDoctor` | Physician details and medical specialties |
| `DimLocation` | Clinics, hospitals, and service locations |
| `DimDate` | Service and transaction dates |
| `DimCPT` | Procedure codes (Current Procedural Terminology) |
| `DimDiagnosis` | ICD diagnosis codes |
| `DimPayer` | Insurance payers (Medicare, Medicaid, private, etc.) |
| `DimAdjustment` | Adjustment types and reasons (credentialing, write-offs, etc.) |

---

## 🎯 Project Objectives

By completing this project, you will be able to:

1. Design and create a relational database from scratch in SQL Server
2. Import data from Excel files into structured tables
3. Define primary keys, foreign keys, and referential integrity constraints
4. Explore and understand real-world healthcare data
5. Write SQL joins to trace a patient's complete billing journey
6. Perform business calculations and aggregations on financial data
7. Answer 10 analytical business questions using SQL

---

## 🚀 Project Steps

### Step 1 — Create the Database
- Set up the database in SQL Server
- Create all tables (FactTable + 8 dimension tables) with correct data types

### Step 2 — Import Data
- Load Excel source files into their corresponding tables
- Verify row counts and data integrity

### Step 3 — Add Constraints
- Define primary keys on all tables
- Add foreign keys in the FactTable linking to each dimension

### Step 4 — Explore the Data
- Run `SELECT` queries to inspect each table
- Identify key columns for analysis

### Step 5 — Write Joins
Trace the complete journey of a patient through:
- Patient demographics
- Service location and dates
- Physician and charge information
- Diagnosis and CPT codes
- Transactions, payments, and adjustments

### Step 6 — Solve 10 Business Queries

| # | Question |
|---|---|
| 1 | How many rows have a gross charge > $100? |
| 2 | How many unique patients are in the database? |
| 3 | How many CPT codes exist per CPT group? |
| 4 | How many doctors submitted at least one Medicare claim? |
| 5 | How many CPT codes have more than 100 units? |
| 6 | Which medical specialty received the most payments? Show monthly breakdown. |
| 7 | How many CPT units are assigned to diagnoses with a "J" in the code? |
| 8 | Patient demographic report segmented by age group (<18 / 18–65 / >65) |
| 9 | How much money was written off due to credentialing adjustments? Which facility had the most? How many physicians were affected? |

---

## 🛠️ Tools & Stack

- **Database:** Microsoft SQL Server
- **Data Source:** Excel (.xlsx)
- **Query Language:** T-SQL

---

## 📁 Project Structure
```
hospital-billing-sql/
│
├── data/                  # Source Excel files
│   ├── FactTable.xlsx
│   ├── DimPatient.xlsx
│   └── ...
│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_add_constraints.sql
│   ├── 03_exploration.sql
│   ├── 04_joins.sql
│   └── 05_business_queries.sql
│
└── README.md
```

---

## 📅 Timeline

| Period | Duration |
|---|---|
| March 2 – March 6, 2026 | 5 working days — individual project |

---

## 💡 Key Concepts Practiced

- Star schema design
- Referential integrity with FK constraints
- Multi-table JOINs (INNER, LEFT)
- Aggregations: `COUNT`, `SUM`, `GROUP BY`, `HAVING`
- Conditional logic: `CASE WHEN` for age segmentation
- Business analysis: revenue cycles, payer mix, credentialing impact
