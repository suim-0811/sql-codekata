-- 보호소에서 중성화한 동물
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59045
-- 작성자: 김수임
-- 작성일: 2026. 02. 23. 20:04:44

-- 코드를 입력하세요
SELECT 
    I.ANIMAL_ID,
    I.ANIMAL_TYPE,
    I.NAME
FROM ANIMAL_INS I
JOIN ANIMAL_OUTS O ON I.ANIMAL_ID=O.ANIMAL_ID
WHERE I.SEX_UPON_INTAKE LIKE 'Intact%'
AND (O.SEX_UPON_OUTCOME LIKE 'Neutered%' OR O.SEX_UPON_OUTCOME LIKE 'Spayed%')
ORDER BY I.ANIMAL_ID
