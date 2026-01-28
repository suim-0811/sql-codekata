-- 모든 레코드 조회하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59034
-- 작성자: 김수임
-- 작성일: 2026. 01. 28. 20:36:15

-- 코드를 입력하세요
SELECT
    ANIMAL_ID,
    ANIMAL_TYPE,
    DATETIME,
    INTAKE_CONDITION,
    NAME,
    SEX_UPON_INTAKE
FROM ANIMAL_INS 
ORDER BY ANIMAL_ID