-- 식품분류별 가장 비싼 식품의 정보 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131116
-- 작성자: 김수임
-- 작성일: 2026. 04. 06. 14:50:46

-- 코드를 입력하세요
SELECT
    CATEGORY,
    PRICE AS MAX_PRICE,
    PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE (CATEGORY, PRICE) IN (
    SELECT
        CATEGORY,
        MAX(PRICE)
    FROM FOOD_PRODUCT
    WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
    GROUP BY CATEGORY
)
ORDER BY MAX_PRICE DESC;