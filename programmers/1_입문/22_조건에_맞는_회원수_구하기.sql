-- 조건에 맞는 회원수 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535
-- 작성자: 김수임
-- 작성일: 2026. 01. 20. 10:00:05

-- 코드를 입력하세요
SELECT
    COUNT(USER_ID) AS USERS
FROM USER_INFO
WHERE AGE BETWEEN 20 AND 29
AND YEAR(JOINED) = 2021;
