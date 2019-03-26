/* 1. výpis učitelů, kteří neučí žádnej předmět */

SELECT * FROM teacher t LEFT JOIN class_subject cs
ON cs.teacher_id = t.id WHERE cs.subject_id IS NULL

/* 2. vsichni zaci, kteri maji aspon jednu 5 a vypsat, kolik jich je*/

SELECT COUNT(grade) AS pocet_petek, p.name FROM pupil_subject ps
JOIN pupil p ON ps.pupil_id = p.id
WHERE ps.grade = 5
GROUP BY p.id

/* 3.prumer pro kazdou tridu */

SELECT c.year, c.name, AVG(ps.grade) FROM pupil_subject ps
JOIN pupil p ON ps.pupil_id = p.id
JOIN class c ON c.id = p.class_id
GROUP BY c.id

/* 4.prumer pro kazdy rocnik */

SELECT c.year, c.name, AVG(ps.grade) FROM pupil_subject ps
JOIN pupil p ON ps.pupil_id = p.id
JOIN class c ON c.id = p.class_id
GROUP BY c.year

/* 5.ucitele, kteri uci svoji tridu aspon na 1 predmet*/

SELECT c.year, c.name, t.name FROM class c
JOIN class_subject cs ON c.homeroom_teacher_id = cs.teacher_id
JOIN teacher t ON t.id = cs.teacher_id
WHERE cs.teacher_id = c.homeroom_teacher_id
GROUP BY c.id

/* 6. prumerna znamka na predmet a rocnik */

SELECT s.name, c.year, AVG(ps.grade) FROM pupil_subject ps
JOIN subject s ON ps.subject_id = s.id
JOIN class_subject cs ON cs.subject_id = s.id
JOIN class c ON c.id = cs.class_id
GROUP BY s.id, c.year

/* 7. - pet nejvetsich lidumilu */

SELECT t.name, AVG(grade) AS prumer FROM teacher t
JOIN class_subject cs ON t.id = cs.teacher_id
JOIN pupil_subject ps ON ps.subject_id = cs.subject_id
GROUP BY t.name
ORDER BY AVG(grade)
LIMIT 5

/* 7. - pet nejvetsich drsnaku*/

SELECT t.name, AVG(grade) AS prumer FROM teacher t
JOIN class_subject cs ON t.id = cs.teacher_id
JOIN pupil_subject ps ON ps.subject_id = cs.subject_id
GROUP BY t.name
ORDER BY AVG(grade) DESC
LIMIT 5

