--Dataset exploration

select avg(Age) --Avg age of people
from athletes_event_results

select count(Id)  -- total IDS
from athletes_event_results

select * 
from athletes_event_results

select sum(
case when Height is null then 1 -- total nulls
else 0 end)
as total 
from athletes_event_results







select Sex, Age, Medal
from athletes_event_results
where (Age<30 AND Sex = 'M')
AND Medal = 'Gold'



select City,count(ID) AS total
from athletes_event_results   --total participants by city
Group by City
Order by total DESC


select Sport,count(ID) AS total
from athletes_event_results --total IDS by sport
Group by Sport
Order by total DESC

select Event,count(ID) --total IDS by event
from athletes_event_results
Group by Event




select count(medal)
from athletes_event_results -- total medal count

select count(medal)
from athletes_event_results -- acttual medal count without N/A
where medal = 'Gold'
OR  medal = 'Bronze'
OR medal = 'Silver'

select count(distinct medal)
from athletes_event_results --types of medals

select max(Age) -- max age
from athletes_event_results

select min(Age) -- min age of participant
from athletes_event_results


select count(name)-- people who got gold medals
from athletes_event_results
where Medal = 'Gold'

select count(ID)
from athletes_event_results  --total games happened in summer
where Games like '%Summer%'

select count(distinct name) --total participants
from athletes_event_results

select count(name) --male participants
from athletes_event_results
where Sex = 'M'

select count(name) --female participants
from athletes_event_results
where Sex = 'F'

select count(distinct(City))  -- total cities from which people came from 
from athletes_event_results

select count(distinct(Sport))  -- total distinct sport
from athletes_event_results

