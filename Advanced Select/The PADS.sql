SELECT concat(Name, '(', Substring(Occupation,1,1), ')') AS Name FROM OCCUPATIONS ORDER BY Name;
SELECT concat('There are a total of ', count(Occupation), ' ', lower(Occupation),'s.') As Occupation 
  FROM OCCUPATIONS GROUP BY occupation ORDER BY Occupation
