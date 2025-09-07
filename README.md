# SQL India 2024 General Elections Analysis

## 📌 Project Overview
This project analyzes the **2024 Indian General Elections dataset** using **SQL** to uncover voting patterns, alliance performance, and constituency-level trends. The goal is to demonstrate how structured data analysis can extract actionable insights from large-scale public datasets.

---

## 🛠️ Tools & Technologies
- **MySQL** – querying, aggregating, and analyzing data  
- **SQL Editor** – for running queries and exploring datasets  

---

## 🎯 Key Objectives
- Explore and clean the election dataset  
- Analyze **seats won by parties and alliances**  
- Examine **state-wise and constituency-wise results**  
- Identify top-performing parties and competitive constituencies  

---

## 🔑 Key Insights

1. **Alliance Performance Across India**  
   > NDA won **292 seats**, I.N.D.I.A alliance won **234 seats**, and other parties won **17 seats**, indicating NDA as the leading alliance overall.

2. **Top Parties by Seats Won**  
   > For NDA, the party with the highest seats was **Bharatiya Janata Party (BJP)** with **240 seats**.  
   > For I.N.D.I.A, the leading party was **Indian National Congress (INC)** with **99 seats**.

3. **State-wise Seats Distribution**  
   > NDA and I.N.D.I.A alliances showed varying performance across states.  
   > NDA dominated in states like Uttar Pradesh (36 seats) and Gujarat (25 seats), while I.N.D.I.A led in Tamil Nadu (39 seats) and Kerala (19 seats).  
   > Other parties won a few seats in regions like Ladakh, Mizoram, and Dadra & Nagar Haveli and Daman & Diu.

4. **Constituency Highlights**  
   > Leading candidates consistently outperformed runners-up by an average margin of **162,051 votes (~5.3% of total votes)**.  
   > This margin percentage gives a relative perspective on the competitiveness of the constituencies.

---

## 🚀 Impact
This project demonstrates the ability to:  
- Write optimized SQL queries to extract meaningful insights  
- Analyze large datasets and translate them into **structured, actionable findings**  
- Present results in a clear, concise, and recruiter-friendly format  

---

## 📂 Dataset Details
[DOWNLOAD DATASETS](https://drive.google.com/drive/folders/1Pa6ISSgmb5OHMMMm0sNwc1vl_V6NlAPV?usp=sharing)

### partywise_results
- **Party:** Name of the political party  
- **Won:** Number of seats won by the party  
- **Party ID:** Unique identifier for the party  

### constituencywise_details
- **Candidate:** Name of the candidate  
- **Party:** Political party of the candidate  
- **EVM Votes:** Votes received through EVMs  
- **Postal Votes:** Votes received via postal ballots  
- **Total Votes:** Sum of EVM and postal votes  
- **% of Votes:** Percentage of total votes received  
- **Constituency ID:** Unique identifier for the constituency  

### constituencywise_results
- **Parliament Constituency:** Name of the parliamentary constituency  
- **Constituency Name:** Specific constituency within the parliamentary area  
- **Winning Candidate:** Candidate who secured the highest votes  
- **Total Votes:** Total number of votes cast  
- **Margin:** Difference between the winner and the runner-up  
- **Constituency ID:** Unique identifier for the constituency  
- **Party ID:** Unique identifier for the party  

### statewise_results
- **Constituency:** Name of the electoral constituency  
- **Const. No.:** Constituency number  
- **Parliament Constituency:** Associated parliamentary constituency  
- **Leading Candidate:** Candidate with the highest votes  
- **Trailing Candidate:** Candidate with the second-highest votes  
- **Margin:** Vote difference between leading and trailing candidates  
- **Status:** Election status (e.g., won/lost)  
- **State ID:** Unique identifier for the state  
- **State:** Name of the state  

### states
- **State ID:** Unique identifier for the state  
- **State:** Name of the state  

---

## 📝 Queries
1. Total Seats  
2. Total number of seats available for elections in each state  
3. Total Seats Won by NDA Alliance  
4. Seats Won by NDA Alliance Parties  
5. Total Seats Won by I.N.D.I.A. Alliance  
6. Seats Won by I.N.D.I.A. Alliance Parties  
7. Add new column in `partywise_results` to get the Party Alliance (NDA, I.N.D.I.A, OTHER)  
8. Which party alliance (NDA, I.N.D.I.A, or OTHER) won the most seats across all states  
9. Winning candidate's name, party name, total votes, and margin of victory for a specific state and constituency  
10. Distribution of EVM votes versus postal votes for candidates in a specific constituency  
11. Which parties won the most seats in a state, and how many seats each party won  
12. Total number of seats won by each party alliance in each state  
13. Candidates with the highest number of EVM votes in each constituency (Top 10)  
14. Winner and runner-up for each constituency in a state  
15. For Maharashtra: total seats, total candidates, total parties, total votes, and breakdown of EVM vs postal votes  
