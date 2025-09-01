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

## 🚀 How to Run  

1. **Clone the repo**  
   ```bash
   git clone https://github.com/PriyanshuThakur09/Manufacturing-Process-Efficiency-Analytics.git
   cd Manufacturing-Process-Efficiency-Analytics
   
2. **Install Python dependencies**

- pip install -r requirements.txt

3.**Run the Jupyter Notebook**
- jupyter notebook Notebook/"Manufacturing efficiency analytics OEE.ipynb"

4.**Open the Power BI Dashboard**

- Dashboard and Report/Production Line Analytics Dashboard.pbix

5.**Explore final results**

- Final result - OEE/oee_results.csv



## 📌 Author  
👤 **Priyanshu Thakur**  
Final Year B.Tech Production Engineering, NIT Agartala  

