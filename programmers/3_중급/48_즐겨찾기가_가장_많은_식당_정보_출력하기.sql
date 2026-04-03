-- 즐겨찾기가 가장 많은 식당 정보 출력하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131123
-- 작성자: 김수임
-- 작성일: 2026. 04. 03. 10:36:44

-- 코드를 입력하세요
SELECT
    FOOD_TYPE,
    REST_ID,
    REST_NAME,
    FAVORITES
FROM (
    SELECT 
        FOOD_TYPE,
        REST_ID,
        REST_NAME,
        FAVORITES,
        ROW_NUMBER() OVER (PARTITION BY FOOD_TYPE ORDER BY FAVORITES DESC) AS RN
    FROM REST_INFO 
    ) RANKED
WHERE RN = 1
ORDER BY FOOD_TYPE DESC