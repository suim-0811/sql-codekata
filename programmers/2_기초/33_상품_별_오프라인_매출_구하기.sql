-- 상품 별 오프라인 매출 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131533
-- 작성자: 김수임
-- 작성일: 2026. 02. 19. 09:13:53

-- 코드를 입력하세요
SELECT
    P.PRODUCT_CODE,
    SUM(P.PRICE * O.SALES_AMOUNT) AS SALES
FROM PRODUCT AS P
LEFT JOIN OFFLINE_SALE AS O
ON P.PRODUCT_ID = O.PRODUCT_ID
GROUP BY PRODUCT_CODE
ORDER BY SALES DESC, PRODUCT_CODE