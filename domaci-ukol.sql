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

/* 5.prumer pro kazdy rocnik */

