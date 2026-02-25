-- 성분으로 구분한 아이스크림 총 주문량
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133026
-- 작성자: 김수임
-- 작성일: 2026. 02. 25. 16:36:59

-- 코드를 입력하세요
SELECT 
    I.INGREDIENT_TYPE,
    SUM(H.TOTAL_ORDER) AS TOTAL_ORDER
from FIRST_HALF H
join ICECREAM_INFO I ON H.FLAVOR = I.FLAVOR
GROUP BY I.INGREDIENT_TYPE
ORDER BY 2 
