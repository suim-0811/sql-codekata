-- 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151137
-- 작성자: 김수임
-- 작성일: 2026. 02. 11. 09:35:07

-- 코드를 입력하세요
SELECT
    CAR_TYPE,
    COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%열선시트%'
OR OPTIONS LIKE '%가죽시트%'
OR OPTIONS LIKE '%통풍시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE