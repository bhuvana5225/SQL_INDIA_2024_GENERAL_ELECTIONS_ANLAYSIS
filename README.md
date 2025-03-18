## OVERVIEW
This project analyzes the results of the India General Elections 2024 using SQL. 
The dataset contains election results, including candidate details, party affiliations, vote counts, and winning margins.
The SQL queries help extract insights such as the top-winning parties, state-wise performance, and voter turnout trends.

## DATASET DETAILS
[DOWNLOAD DATASETS](https://drive.google.com/drive/folders/1Pa6ISSgmb5OHMMMm0sNwc1vl_V6NlAPV?usp=sharing)

### partywise_results
------------------
**Party:**     Name of the political party.  
**Won:**       Number of seats won by the party.  
**Party ID:**  Unique identifier for the party.  

### constituencywise_details
------------------------
**Candidate:** Name of the candidate.  
**Party:** Political party of the candidate.  
**EVM Votes:** Votes received through EVMs.  
**Postal Votes:** Votes received via postal ballots.  
**Total Votes:** Sum of EVM and postal votes.  
**% of Votes:** Percentage of total votes received.  
**Constituency ID:** Unique identifier for the constituency.  

### constituencywise_results
------------------------
**Parliament Constituency:** Name of the parliamentary constituency.  
**Constituency Name:** Specific constituency within the parliamentary area.  
**Winning Candidate:** Candidate who secured the highest votes.  
**Total Votes:** Total number of votes cast.   
**Margin:** Difference between the winner and the runner-up.    
**Constituency ID:** Unique identifier for the constituency.  
**Party ID:** Unique identifier for the party.  

### statewise_results
-----------------
**Constituency:** Name of the electoral constituency.    
**Const. No.:** Constituency number.  
**Parliament Constituency:** Associated parliamentary constituency.  
**Leading Candidate:** Candidate with the highest votes.  
**Trailing Candidate:** Candidate with the second-highest votes.  
**Margin:** Vote difference between leading and trailing candidates.  
**Status:** Election status (e.g., won/lost).  
**State ID:** Unique identifier for the state.  
**State:** Name of the state.  

### states
------
***State ID:*** Unique identifier for the state.  
***State:*** Name of the state.  


## QUERIES
1. Total Seats
2. What is the total number of seats available for elections in each state
3. Total Seats Won by NDA Alliance
4. Seats Won by NDA Alliance Parties
5. Total Seats Won by I.N.D.I.A. Alliance
6. Seats Won by I.N.D.I.A. Alliance Parties
7. Add new column field in table partywise_results to get the Party Allianz as NDA, I.N.D.I.A and OTHER
8. Which party alliance (NDA, I.N.D.I.A, or OTHER) won the most seats across all states
9. Winning candidate's name, their party name, total votes, and the margin of victory for a specific state and constituency
10. What is the distribution of EVM votes versus postal votes for candidates in a specific constituency
11. Which parties won the most seats in s State, and how many seats did each party win
12. What is the total number of seats won by each party alliance (NDA, I.N.D.I.A, and OTHER) in each state for the India Elections 2024
13. Which candidate received the highest number of EVM votes in each constituency (Top 10)
14. Which candidate won and which candidate was the runner-up in each constituency of State for the 2024 elections
15. For the state of Maharashtra, what are the total number of seats, total number of candidates, total number of parties, total votes (including EVM and postal), and the breakdown of EVM and postal votes?
