.read su18data.sql
.read sp18data.sql

-- Q2
CREATE TABLE obedience AS
  SELECT seven, denero FROM students;

-- Q3
CREATE TABLE smallest_int AS
  SELECT time, smallest FROM students WHERE smallest > 13 ORDER BY smallest LIMIT 20;

-- Q4
CREATE TABLE matchmaker AS
  SELECT students1.pet, students1.song, students1.color, students2.color
  FROM students AS students1, students AS students2
  WHERE students1.pet = students2.pet
  AND students1.song = students2.song
  AND students1.time < students2.time;