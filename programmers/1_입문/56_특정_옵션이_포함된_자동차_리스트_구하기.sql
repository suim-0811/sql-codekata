-- 특정 옵션이 포함된 자동차 리스트 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157343
-- 작성자: 김수임
-- 작성일: 2026. 02. 03. 09:37:08

-- 코드를 입력하세요
SELECT
    CAR_ID,
    CAR_TYPE,
    DAILY_FEE,
    OPTIONS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE "%네비게이션%"
ORDER BY CAR_ID DESC