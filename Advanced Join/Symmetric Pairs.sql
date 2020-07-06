/* Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.
Write a query to output all such symmetric pairs in ascending order by the value of X. */

SELECT distinct f1.x, f1.y FROM 
  (SELECT x, y, rownum r FROM functions) f1, 
  (SELECT x, y, rownum r FROM functions) f2
WHERE f1.y=f2.x AND f2.y=f1.x AND f1.r <> f2.r AND f1.x<=f1.y ORDER BY f1.x;
