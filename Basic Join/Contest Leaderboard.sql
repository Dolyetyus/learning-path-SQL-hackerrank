SELECT sub.hacker_id, hack.name, SUM(sub.max_score) AS total
FROM (
    SELECT
        hacker_id,
        MAX(score) AS max_score
    FROM Submissions
    GROUP BY hacker_id, challenge_id
) sub
JOIN Hackers hack ON sub.hacker_id = hack.hacker_id
WHERE sub.max_score > 0
GROUP BY sub.hacker_id, hack.name
ORDER BY total DESC, sub.hacker_id;
