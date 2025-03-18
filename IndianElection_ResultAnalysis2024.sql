create database elections;
show databases;
use elections;
select * from constituencywise_details;
select * from constituencywise_results;
select * from partywise_results;
select * from statewise_results;
select * from states;

/*Total Seats*/
SELECT  COUNT(*) Total_Seats FROM constituencywise_results;

/* What are the total no.of seats available for elections in each state */
SELECT s.state,  COUNT(DISTINCT sr.parliament_constituency) Total_Seats
FROM statewise_results sr
JOIN states s on s.state_Id = sr.state_Id
GROUP BY s.state;


/* Total Seats Won by NDA Alliance */
SELECT 
SUM(CASE WHEN party IN
				('Bharatiya Janata Party - BJP', 
                'Telugu Desam - TDP', 
				'Janata Dal  (United) - JD(U)',
                'Shiv Sena - SHS', 
                'AJSU Party - AJSUP', 
                'Apna Dal (Soneylal) - ADAL', 
                'Asom Gana Parishad - AGP',
                'Hindustani Awam Morcha (Secular) - HAMS', 
                'Janasena Party - JnP', 
				'Janata Dal  (Secular) - JD(S)',
                'Lok Janshakti Party(Ram Vilas) - LJPRV', 
                'Nationalist Congress Party - NCP',
                'Rashtriya Lok Dal - RLD', 
                'Sikkim Krantikari Morcha - SKM')
                THEN WON
                ELSE 0
                END
	)  Seats_Won_by_NDA_Alliance
FROM partywise_results;


/* Seats won by NDA Alliance Parties */
SELECT party, won `Seats Won`
FROM partywise_results
WHERE party IN ('Bharatiya Janata Party - BJP', 
                'Telugu Desam - TDP', 
				'Janata Dal  (United) - JD(U)',
                'Shiv Sena - SHS', 
                'AJSU Party - AJSUP', 
                'Apna Dal (Soneylal) - ADAL', 
                'Asom Gana Parishad - AGP',
                'Hindustani Awam Morcha (Secular) - HAMS', 
                'Janasena Party - JnP', 
				'Janata Dal  (Secular) - JD(S)',
                'Lok Janshakti Party(Ram Vilas) - LJPRV', 
                'Nationalist Congress Party - NCP',
                'Rashtriya Lok Dal - RLD', 
                'Sikkim Krantikari Morcha - SKM')
ORDER BY `Seats Won` DESC;

/* Seats won by I.N.D.I.A Alliance */
SELECT 
SUM(CASE WHEN party IN
				('Indian National Congress - INC',
                'Aam Aadmi Party - AAAP',
                'All India Trinamool Congress - AITC',
                'Bharat Adivasi Party - BHRTADVSIP',
                'Communist Party of India  (Marxist) - CPI(M)',
                'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
                'Communist Party of India - CPI',
                'Dravida Munnetra Kazhagam - DMK',
                'Indian Union Muslim League - IUML',
                'Nat`Jammu & Kashmir National Conference - JKN',
                'Jharkhand Mukti Morcha - JMM',
                'Jammu & Kashmir National Conference - JKN',
                'Kerala Congress - KEC',
                'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
                'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
                'Rashtriya Janata Dal - RJD',
                'Rashtriya Loktantrik Party - RLTP',
                'Revolutionary Socialist Party - RSP',
                'Samajwadi Party - SP',
                'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
                'Viduthalai Chiruthaigal Katchi - VCK'
)
                THEN WON
                ELSE 0
                END
	)  Seats_Won_by_INDIA_Alliance
FROM partywise_results;


/* Seats won by I.N.D.I.A Alliance parties */
SELECT party, won `Seats Won`
FROM partywise_results
WHERE party  IN ('Indian National Congress - INC',
                'Aam Aadmi Party - AAAP',
                'All India Trinamool Congress - AITC',
                'Bharat Adivasi Party - BHRTADVSIP',
                'Communist Party of India  (Marxist) - CPI(M)',
                'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
                'Communist Party of India - CPI',
                'Dravida Munnetra Kazhagam - DMK',
                'Indian Union Muslim League - IUML',
                'Nat`Jammu & Kashmir National Conference - JKN',
                'Jharkhand Mukti Morcha - JMM',
                'Jammu & Kashmir National Conference - JKN',
                'Kerala Congress - KEC',
                'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
                'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
                'Rashtriya Janata Dal - RJD',
                'Rashtriya Loktantrik Party - RLTP',
                'Revolutionary Socialist Party - RSP',
                'Samajwadi Party - SP',
                'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
                'Viduthalai Chiruthaigal Katchi - VCK')
ORDER BY `Seats Won` DESC;


/* Add new column in the table 'partywise_results' to get the party alliance as 
NDA, I.N.D.I.A or other */
-- just show the column
SELECT party_ID,party,
CASE 
	WHEN party IN ('Indian National Congress - INC',
                'Aam Aadmi Party - AAAP',
                'All India Trinamool Congress - AITC',
                'Bharat Adivasi Party - BHRTADVSIP',
                'Communist Party of India  (Marxist) - CPI(M)',
                'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
                'Communist Party of India - CPI',
                'Dravida Munnetra Kazhagam - DMK',
                'Indian Union Muslim League - IUML',
                'Nat`Jammu & Kashmir National Conference - JKN',
                'Jharkhand Mukti Morcha - JMM',
                'Jammu & Kashmir National Conference - JKN',
                'Kerala Congress - KEC',
                'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
                'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
                'Rashtriya Janata Dal - RJD',
                'Rashtriya Loktantrik Party - RLTP',
                'Revolutionary Socialist Party - RSP',
                'Samajwadi Party - SP',
                'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
                'Viduthalai Chiruthaigal Katchi - VCK') THEN 'I.N.D.I.A'
	WHEN party IN ('Bharatiya Janata Party - BJP', 
                'Telugu Desam - TDP', 
				'Janata Dal  (United) - JD(U)',
                'Shiv Sena - SHS', 
                'AJSU Party - AJSUP', 
                'Apna Dal (Soneylal) - ADAL', 
                'Asom Gana Parishad - AGP',
                'Hindustani Awam Morcha (Secular) - HAMS', 
                'Janasena Party - JnP', 
				'Janata Dal  (Secular) - JD(S)',
                'Lok Janshakti Party(Ram Vilas) - LJPRV', 
                'Nationalist Congress Party - NCP',
                'Rashtriya Lok Dal - RLD', 
                'Sikkim Krantikari Morcha - SKM') THEN 'NDA'
	ELSE 'Independent'
END
AS 'Alliance',
won
FROM partywise_results;

-- TO Update the table with new column
ALTER TABLE partywise_results ADD COLUMN party_alliance VARCHAR(20) default NULL;
-- NDA Alliance
UPDATE partywise_results
SET party_alliance = 'NDA' 
WHERE party IN('Bharatiya Janata Party - BJP', 
                'Telugu Desam - TDP', 
				'Janata Dal  (United) - JD(U)',
                'Shiv Sena - SHS', 
                'AJSU Party - AJSUP', 
                'Apna Dal (Soneylal) - ADAL', 
                'Asom Gana Parishad - AGP',
                'Hindustani Awam Morcha (Secular) - HAMS', 
                'Janasena Party - JnP', 
				'Janata Dal  (Secular) - JD(S)',
                'Lok Janshakti Party(Ram Vilas) - LJPRV', 
                'Nationalist Congress Party - NCP',
                'Rashtriya Lok Dal - RLD', 
                'Sikkim Krantikari Morcha - SKM');
			
-- INDIA Alliance
UPDATE partywise_results
SET party_alliance = 'I.N.D.I.A'
WHERE party IN (
    'Indian National Congress - INC',
    'Aam Aadmi Party - AAAP',
    'All India Trinamool Congress - AITC',
    'Bharat Adivasi Party - BHRTADVSIP',
    'Communist Party of India  (Marxist) - CPI(M)',
    'Communist Party of India  (Marxist-Leninist)  (Liberation) - CPI(ML)(L)',
    'Communist Party of India - CPI',
    'Dravida Munnetra Kazhagam - DMK',	
    'Indian Union Muslim League - IUML',
    'Jammu & Kashmir National Conference - JKN',
    'Jharkhand Mukti Morcha - JMM',
    'Kerala Congress - KEC',
    'Marumalarchi Dravida Munnetra Kazhagam - MDMK',
    'Nationalist Congress Party Sharadchandra Pawar - NCPSP',
    'Rashtriya Janata Dal - RJD',
    'Rashtriya Loktantrik Party - RLTP',
    'Revolutionary Socialist Party - RSP',
    'Samajwadi Party - SP',
    'Shiv Sena (Uddhav Balasaheb Thackrey) - SHSUBT',
    'Viduthalai Chiruthaigal Katchi - VCK');

-- OTHER
UPDATE partywise_results
SET party_alliance = 'OTHER'
WHERE party_alliance IS NULL;


/* Which party alliance(NDA, I.N.D.I.A, OTHER) won the most seats across all the states */
SELECT party_alliance, sum(won) AS Seats_Won
FROM  partywise_results 
GROUP BY party_alliance
ORDER BY Seats_Won DESC;


/* Winning candidate's name, their party name, total votes,
 and the margin of victory for a specific state and constituency */
 SELECT s.state, sr.constituency,cr.winning_candidate, pr.party, cr.total_votes, cr.margin 
 FROM constituencywise_results cr
 JOIN partywise_results pr on pr.party_ID = cr.party_ID
 JOIN statewise_results sr on sr.parliament_constituency = cr.parliament_constituency
 JOIN states s on sr.state_ID = s.state_ID
ORDER BY s.state;

/* What is the distribution of EVM votes versus postal votes per candidates in a 
specific constituency */
SELECT cr.constituency_Name,cd.candidate, cd.EVM_votes, cd.Postal_votes
FROM constituencywise_details cd
JOIN constituencywise_results cr on cr.constituency_ID = cd.constituency_ID
WHERE cr.constituency_Name = 'Narsapuram' ;

/* Which party won the most seats in a State,
 and how many seats did each party win? */
 SELECT pr.party, count(constituency_ID) seats_won
 FROM constituencywise_results cr
 JOIN partywise_results pr on pr.party_ID = cr.party_ID
 JOIN statewise_results sr on sr.parliament_constituency = cr.parliament_constituency
 JOIN states s on sr.state_ID = s.state_ID
 WHERE s.state = 'Andhra Pradesh'
 GROUP BY pr.party
 ORDER BY seats_won desc;
 
 
 /* What is the total no.of seats won by each party alliance in each state for the Inida Election 2024 */
SELECT s.state,
sum(case when pr.party_alliance = 'NDA' THEN 1 ELSE 0 END) 'NDA_Seats',
sum(case when pr.party_alliance = 'I.N.D.I.A' THEN 1 ELSE 0 END) 'INIDIA_Seats',
sum(case when pr.party_alliance = 'OTHER' THEN 1 ELSE 0 END) 'OTHER_Seats'
 FROM partywise_results pr
 JOIN constituencywise_results cr on cr.party_ID = pr.party_ID
 JOIN statewise_results sr on sr.parliament_constituency = cr.parliament_constituency
 JOIN states s on s.state_ID = sr.state_ID
 GROUP BY s.state
 ORDER BY s.state;
 
 /* Which candidate won the highest number of EVM votes in each constituency (TOP 10) */
 SELECT cr.constituency_Name, cd.candidate, sum(cd.EVM_Votes) EVM_Votes
 FROM constituencywise_details cd
 JOIN constituencywise_results cr on cr.constituency_ID = cd.constituency_ID
 GROUP BY cr.constituency_Name,cd.candidate
 ORDER BY EVM_Votes DESC LIMIT 10;
 
 
/* Which candidate won and which candidate is the runner up in each constituency of state for the 2024 elections */
SELECT s.state,sr.constituency,sr.Leading_candidate, sr.Trailing_candidate
FROM statewise_results sr 
JOIN states s on s.state_ID = sr.state_ID
ORDER BY s.STATE, sr.constituency;


/* For the state of Maharastra, what are the total number of seats , 
total number of candidates ,total number of parties , 
total votes (including EVM and Postal) and the break down of EVM and Postal Votes. */
SELECT 
 count(distinct cr.constituency_ID) Total_Seats,
 count(distinct cd.candidate) Total_Candidates , count(distinct pr.party) Total_Parties,
 sum(cd.EVM_Votes) EVM_Votes , sum(cd.Postal_Votes) Postal_Votes,
 sum(cd.EVM_Votes+cd.Postal_Votes) Total_Votes
FROM constituencywise_details cd 
JOIN constituencywise_results cr on cr.constituency_ID = cd.constituency_ID
JOIN partywise_results pr on pr.party_ID = cr.party_ID
JOIN statewise_results sr on sr.parliament_constituency = cr.parliament_constituency
JOIN states s on s.state_ID = sr.state_ID
WHERE s.state = 'Maharashtra';









