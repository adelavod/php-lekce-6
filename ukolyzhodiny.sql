# ukol 1

SELECT * FROM teacher;

SELECT name FROM subject;

SELECT year, name FROM class;

# ukol 2

SELECT name, salary FROM teacher ORDER BY salary DESC, name

# ukol 3

SELECT year, name FROM class WHERE year > 2;

SELECT * FROM class WHERE name IN ('A', 'C') ORDER BY year DESC;

SELECT name FROM teacher WHERE name IN ('Jesse', 'Alice', 'Larry') AND salary > 40000

# ukol 4

SELECT COUNT(name), AVG(salary) FROM teacher;

SELECT  name, MIN(year), MAX(year) FROM class GROUP BY name;

SELECT name, MIN(year), MAX(year) FROM class GROUP BY name ORDER BY year

#  ukol 5

SELECT COUNT(name), AVG(salary) FROM teacher;

SELECT * FROM class c JOIN teacher t ON t.id = c.homeroom_teacher_id
ORDER BY c.year, c.name;

SELECT * FROM class c JOIN teacher t ON t.id = c.homeroom_teacher_id
WHERE t.name = 'Albert';

SELECT COUNT(p.name), c.name, c.year FROM pupil p JOIN class c
ON c.id = p.class_id GROUP BY c.year, c.name

# ukol 6

SELECT c.year, c.name, t.name FROM class c JOIN teacher t
ON t.id = c.homeroom_teacher_id;

UPDATE class c JOIN teacher t ON t.id = c.homeroom_teacher_id
SET c.name = 'C' WHERE t.name IN ('Albert', 'Brandon');

SELECT c.year, c.name, t.name FROM class c JOIN teacher t
ON t.id = c.homeroom_teacher_id;

UPDATE class c JOIN teacher t ON t.id = c.homeroom_teacher_id
SET c.name = 'A' WHERE c.name = 'C';

SELECT * FROM class c JOIN teacher t ON t.id = c.homeroom_teacher_id

# ukol 7

INSERT INTO teacher (name, salary) VALUES ('Alex', 28000);

INSERT INTO teacher (name, salary) VALUES ('Alex', 32000);

SELECT COUNT(name), AVG(salary) FROM teacher WHERE name = 'Alex'

DELETE FROM teacher WHERE name = 'Alex' AND salary > 30000;

DELETE FROM teacher WHERE name = 'Alex'



