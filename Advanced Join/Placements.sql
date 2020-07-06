
/* Write a query to output the names of those students whose best friends got offered a higher salary than them. 
Names must be ordered by the salary amount offered to the best friends.
It is guaranteed that no two students got same salary offer. */

SELECT s.name FROM Friends f, Packages p, Packages pf, Students s
WHERE f.id=p.id AND f.friend_id=pf.id AND pf.salary>p.salary AND f.id=s.id
ORDER BY pf.salary;
