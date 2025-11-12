# 🛒 E-Commerce SQL Analysis

A SQL portfolio project analyzing real-world transactional data from an online retail store (2010–2011).  
The goal is to extract business insights on revenue, customer behavior, product performance, and returns using MySQL.

---

## 📊 Key Insights
- Total, daily, and monthly revenue performance  
- Top products and customers  
- Return rate trends and problematic months  
- Country-level market share and revenue concentration  

---

## ⚙️ Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/<your-username>/ecommerce-sql-analysis.git
Download the cleaned dataset from Kaggle
E-Commerce Data – Kaggle

Place it in the /data/ folder as:

bash
Copy code
/data/clean_ecommerce.csv
In MySQL, run:

bash
Copy code
mysql < queries/00_create_db_and_table.sql
mysql < queries/01_load_clean_csv.sql
Execute the analysis queries (q1 → q10) to reproduce the results.

📂 Repository Structure
graphql
Copy code
ecommerce-sql-analysis/
├── data/                     # Place cleaned dataset here (excluded from Git)
├── docs/                     # Full technical and business documentation
├── queries/                  # All SQL scripts (setup + analysis)
├── results/                  # Query outputs (.csv)
└── README.md
🧠 Tools Used
MySQL 8.0

VS Code + Git Bash

Git/GitHub for version control

📄 Dataset
This project uses the E-Commerce Data dataset from Kaggle,
originally published by the UCI Machine Learning Repository.
The file is not included in this repository due to size and licensing restrictions.
For full details, see docs/project_documentation.md.

👤 Author
Raphael Dantas
E-Commerce SQL Analysis – Portfolio Project