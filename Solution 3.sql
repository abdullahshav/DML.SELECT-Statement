SELECT actor.actor_id, actor.first_name, actor.last_name, MAX(film.release_year) AS last_movie_year
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
GROUP BY actor.actor_id, actor.first_name, actor.last_name
ORDER BY last_movie_year ASC
LIMIT 1

