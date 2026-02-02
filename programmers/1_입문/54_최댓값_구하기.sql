-- 최댓값 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59415
-- 작성자: 김수임
-- 작성일: 2026. 02. 02. 19:37:02


-- 코드를 입력하세요
SELECT
    DATETIME AS "시간"
FROM ANIMAL_INS
ORDER BY DATETIME DESC
LIMIT 1