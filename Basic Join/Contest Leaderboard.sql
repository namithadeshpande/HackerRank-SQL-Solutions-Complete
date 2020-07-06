/* You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. 
Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. 
If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. 
Exclude all hackers with a total score of 0 from your result. */

select * from 
(select hackers.hacker_id, name, sum(subs.maxscore) as totalscore from hackers INNER JOIN 
(select hacker_id, challenge_id, max(score) as maxscore from submissions
group by hacker_id, challenge_id) subs
on hackers.hacker_id=subs.hacker_id
group by hackers.hacker_id, hackers.name) data 
where data.totalscore > 0
order by data.totalscore desc, hacker_id;
