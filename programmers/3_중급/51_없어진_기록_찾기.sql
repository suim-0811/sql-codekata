-- 없어진 기록 찾기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59042
-- 작성자: 김수임
-- 작성일: 2026. 04. 09. 11:20:56

-- 코드를 입력하세요
SELECT
    O.ANIMAL_ID,
    O.NAME    
from ANIMAL_OUTS O
left join ANIMAL_INS I
ON I.ANIMAL_ID=O.ANIMAL_ID
WHERE I.ANIMAL_ID IS NULL
ORDER BY O.ANIMAL_ID ASC