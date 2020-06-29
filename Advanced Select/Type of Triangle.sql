/* Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle. */

SELECT CASE
WHEN A + B <= C OR A + C <= B OR B + C <= A THEN "NOT A TRIANGLE"
WHEN A = B AND B = C THEN "EQUILATERAL"
WHEN A = B OR A = C OR B = C THEN "ISOSCELES"
ELSE "SCALENE"
END AS TRIANGLE SIDES
FROM TRIANGLES
