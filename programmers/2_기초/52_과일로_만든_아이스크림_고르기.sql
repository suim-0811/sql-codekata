-- 과일로 만든 아이스크림 고르기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133025
-- 작성자: 김수임
-- 작성일: 2026. 03. 03. 20:40:15

-- 코드를 입력하세요
SELECT 
    H.FLAVOR
FROM FIRST_HALF H
JOIN ICECREAM_INFO I
ON H.FLAVOR=I.FLAVOR
WHERE I.INGREDIENT_TYPE = 'fruit_based'
AND H.TOTAL_ORDER > 3000
ORDER BY H.TOTAL_ORDER DESC