-- 오랜 기간 보호한 동물(1)
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59044
-- 작성자: 김수임
-- 작성일: 2026. 03. 18. 15:15:35

-- 코드를 입력하세요
SELECT 
    I.NAME,
    I.DATETIME
FROM ANIMAL_INS I
LEFT JOIN ANIMAL_OUTS O ON I.ANIMAL_ID=O.ANIMAL_ID
WHERE O.DATETIME IS NULL
ORDER BY I.DATETIME
LIMIT 3