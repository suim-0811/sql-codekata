-- 카테고리 별 상품 개수 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131529
-- 작성자: 김수임
-- 작성일: 2026. 02. 05. 13:28:46


-- 코드를 입력하세요
SELECT
    left(PRODUCT_CODE,2) as CATEGORY,
    count(*) as PRODUCTS
FROM PRODUCT
group by CATEGORY
order by CATEGORY