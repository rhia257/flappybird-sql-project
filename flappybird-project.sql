/** 
* Flappy Bird SQL Project
* This project demonstrates SQL table creation, insertion, alteration,
    updating, deletion, and basic queries using FlappyBird data.
**/

/** Create FlappyBird table **/
CREATE TABLE FlappyBird (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    score INTEGER,
    highscore INTEGER,
    times_played INTEGER,
    bird_colour TEXT
);

/** Insert initial FlappyBird data **/
INSERT INTO FlappyBird (score, highscore, times_played, bird_colour)
VALUES 
(12, 181, 79, "Yellow"),
(57, 99, 23, "Red"),
(61, 107, 55, "Yellow"),
(100, 100, 100, "Blue"),
(1, 5, 2, "Yellow"),
(40, 64, 21, "Grey"),
(150, 175, 200, "Orange"),
(7, 7, 1, "Yellow");

/** View initial table data **/
SELECT *
FROM FlappyBird;

/** Insert additional FlappyBird data **/
INSERT INTO FlappyBird (score, highscore, times_played, bird_colour)
VALUES
(99, 101, 30, "Yellow"),
(51, 52, 18, "Blue"),
(22, 24, 3, "Green");

/** View updated table **/
SELECT *
FROM FlappyBird;

/** Alter table to add player_ranking column **/
ALTER TABLE FlappyBird
ADD player_ranking INTEGER;

/** Verify new column exists **/
SELECT *
FROM FlappyBird;

/** Update player rankings **/
UPDATE FlappyBird
SET player_ranking = 1
WHERE id = 1;

UPDATE FlappyBird
SET player_ranking = 6
WHERE id = 2;

UPDATE FlappyBird
SET player_ranking = 3
WHERE id = 3;

UPDATE FlappyBird
SET player_ranking = 5
WHERE id = 4;

UPDATE FlappyBird
SET player_ranking = 11
WHERE id = 5;

UPDATE FlappyBird
SET player_ranking = 7
WHERE id = 6;

UPDATE FlappyBird
SET player_ranking = 2
WHERE id = 7;

UPDATE FlappyBird
SET player_ranking = 10
WHERE id = 8;

UPDATE FlappyBird
SET player_ranking = 4
WHERE id = 9;

UPDATE FlappyBird
SET player_ranking = 8
WHERE id = 10;

UPDATE FlappyBird
SET player_ranking = 9
WHERE id = 11;

/** View table grouped by player ranking **/
SELECT 
    id,
    highscore,
    player_ranking
FROM FlappyBird
GROUP BY player_ranking;

/** Delete a record **/
DELETE FROM FlappyBird
WHERE id = 11;

/** View table after deletion **/
SELECT *
FROM FlappyBird;