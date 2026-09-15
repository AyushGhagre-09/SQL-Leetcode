-- Problem  :  Actors and Directors Who Cooperated At Least Three Times
-- Difficulty: Easy 
-- Link     : https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/description/

-- Your solution here
SELECT 
 actor_id,
 director_id
FROM ActorDirector
GROUP BY actor_id,director_id
HAVING COUNT(director_id) >=3;
