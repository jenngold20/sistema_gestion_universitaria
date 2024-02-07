USE gamers;

-- Mostrar todos los usuarios cuyo nombre empiece con “A”.
SELECT * FROM SYSTEM_USER WHERE first_name LIKE 'A%';

-- Mostrar todos los usuarios cuyo nombre termine con “s”.
SELECT * FROM SYSTEM_USER WHERE first_name LIKE '%s';

-- Mostrar todos los usuarios cuyo nombre tenga “o” como segunda letra.
SELECT * FROM SYSTEM_USER WHERE first_name LIKE '_o%';

-- Combinar los resultados de dos consultas que devuelvan los nombres de todos los juegos que empiecen con “A” y todos los juegos que empiecen con “B”.
SELECT name FROM GAME WHERE name LIKE 'A%'
UNION ALL
SELECT name FROM GAME WHERE name LIKE 'B%';

-- Mostrar todos los usuarios cuyo nombre empiece con una vocal (a, e, i, o, u).
SELECT * FROM SYSTEM_USER WHERE first_name REGEXP '^[aeiouAEIOU]';

-- Mostrar todos los usuarios cuyo nombre empiece con una consonante (cualquier letra que no sea a, e, i, o, u).
SELECT * FROM SYSTEM_USER WHERE first_name REGEXP '^[^aeiouAEIOU]';

-- Mostrar todos los usuarios cuyo nombre no contiene la letra “a”.
SELECT * FROM SYSTEM_USER WHERE first_name NOT LIKE '%a%';

-- Mostrar todos los usuarios cuyo nombre no empieza con la letra “A”.
SELECT * FROM SYSTEM_USER WHERE first_name NOT LIKE 'A%';      


-- Muestra los 10 comentarios más recientes, ordenados por fecha de creación.
SELECT *
FROM COMMENTARY
ORDER BY comment_date DESC
LIMIT 10;

-- Muestra una lista de usuarios con sus IDs y nombres completos (concatenando first_name y last_name), usando el alias name.
SELECT id_system_user AS user_id, CONCAT(first_name, ' ', last_name) AS name
FROM SYSTEM_USER;

-- Calcula el total de comentarios en la tabla COMMENT.
SELECT COUNT(*) AS total_comments
FROM COMMENT;

-- Encuentra la fecha del primer y último comentario realizados.
SELECT MIN(first_date) AS first_comment_date, MAX(first_date) AS last_comment_date
FROM COMMENT;

-- Calcula la suma total de votos en la tabla VOTE.
SELECT SUM(value) AS total_votes
FROM VOTE;

-- Muestra el número de comentarios por juego (id_game), pero solo para aquellos juegos que tengan más de 5 comentarios.
SELECT id_game, COUNT(*) AS total_comments
FROM COMMENT
GROUP BY id_game
HAVING COUNT(*) > 5;

-- Calcula el promedio de votos en la tabla VOTE.
SELECT AVG(value) AS average_vote
FROM VOTE;

-- Muestra todos los comentarios de la tabla COMMENT, incluyendo aquellos que no tienen un usuario asociado en la tabla SYSTEM_USER.
SELECT c.*, u.first_name, u.last_name
FROM COMMENT c
LEFT JOIN SYSTEM_USER u ON c.id_system_user = u.id_system_user;

-- Combina la tabla COMMENT con la tabla SYSTEM_USER para mostrar el ID del juego (id_game) y el nombre completo del usuario que realizó el comentario.
SELECT c.id_game, CONCAT(u.first_name, ' ', u.last_name) AS user_full_name
FROM COMMENT c
INNER JOIN SYSTEM_USER u ON c.id_system_user = u.id_system_user;                                                                                                                                                          