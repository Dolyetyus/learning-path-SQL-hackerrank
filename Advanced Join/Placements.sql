SELECT s1.Name FROM Students as s1
JOIN Friends as f ON s1.ID = f.ID
JOIN Students as s2 ON f.friend_ID = s2.ID
JOIN Packages as p1 ON s1.ID = p1.ID
JOIN Packages as p2 ON s2.ID = p2.ID
WHERE p1.salary < p2.salary
ORDER BY p2.salary;
