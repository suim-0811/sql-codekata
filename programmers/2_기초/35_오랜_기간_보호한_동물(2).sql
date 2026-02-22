-- 오랜 기간 보호한 동물(2)
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59411
-- 작성자: 김수임
-- 작성일: 2026. 02. 22. 13:56:51

-- 코드를 입력하세요
SELECT 
    I.ANIMAL_ID,
    I.NAME
from ANIMAL_INS  I
JOIN ANIMAL_OUTS O ON I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY (O.DATETIME - I.DATETIME) DESC
LIMIT 2