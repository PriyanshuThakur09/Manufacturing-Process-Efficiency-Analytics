# 📊 Manufacturing Process Efficiency Analytics – OEE Approach  

## 📌 Project Overview  
This project evaluates **manufacturing process efficiency** using the industry-standard metric **OEE (Overall Equipment Effectiveness)**.  
It integrates **Excel, SQL, Python, and Power BI** to build an **end-to-end analytics workflow** for Availability, Performance, and Quality.  

The outcome is a **Power BI dashboard** that visualizes OEE trends, compares products/operators, and benchmarks results against the **world-class OEE target of 85%**.  

---

## 🛠️ Tools & Technologies  
- **Excel** → Data cleaning & preprocessing  
- **PostgreSQL (SQL)** → Availability calculations  
- **Python (Pandas, NumPy, Matplotlib, Seaborn)** → Performance, Quality, OEE calculations + plots  
- **Power BI** → Interactive KPI dashboard  

## 📂 Repository Structure  

Manufacturing-Process-Efficiency-Analytics/
│
├── Dashboard and Report/
│ ├── Production Line Analytics Dashboard.pbix # Power BI dashboard
│ └── Production Line Analytics Dashboard.pdf # Exported report
│
├── Final result - OEE/
│ └── oee_results.csv # Final dataset with A, P, Q, OEE
│
├── Notebook/
│ └── Manufacturing efficiency analytics.ipynb # Jupyter Notebook (Python analysis)
│
├── Project Data/
│ ├── batch_times.csv # Availability results from SQL
│ ├── counts_simulated.csv # Simulated production counts & rejects
│ ├── downtime-factors.csv # Raw downtime factors
│ ├── line-downtime.csv # Raw downtime data
│ ├── line-productivity.csv # Raw productivity data
│ ├── line_downtime_clean.csv # Cleaned downtime dataset
│ ├── line_productivity_clean.csv # Cleaned productivity dataset
│ └── products.csv # Product details (size, specs)
│
└── README.md # Project overview & instructions



---

## 📈 Workflow  

1. **Data Cleaning (Excel)** → Removed nulls, standardized formats.  
2. **Availability (SQL)** → Calculated Planned Time, Downtime, Runtime, Availability.  
3. **Performance & Quality (Python)** →  
   - Performance = (Ideal Cycle Time × Total Units) ÷ Run Time  
   - Quality = Good Units ÷ Total Units  
4. **OEE (Python)** → Combined all metrics: `OEE = A × P × Q`.  
5. **Dashboard (Power BI)** → KPIs, product/operator comparisons, OEE trends vs benchmark.  

---


## 🔑 Key Insights  
- **Performance (~92%)** and **Quality (~99%)** were strong.  
- **Availability (~67%)** was the main bottleneck.  
- Overall OEE ≈ **61%**, below the **85% benchmark**, highlighting downtime reduction as the top priority.  

---

## 🎯 Skills Demonstrated  
- **Production Engineering** → OEE framework, downtime analysis  
- **Data Analytics** → SQL querying, Python-based computation  
- **Business Intelligence** → Power BI KPI dashboards  
- **End-to-End Workflow** → Excel → SQL → Python → Power BI  

## 📌 Author  
👤 **Priyanshu Thakur**  
Final Year B.Tech Production Engineering, NIT Agartala  

