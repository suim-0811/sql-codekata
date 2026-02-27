-- 대여 기록이 존재하는 자동차 리스트 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157341
-- 작성자: 김수임
-- 작성일: 2026. 02. 27. 18:34:54

-- 코드를 입력하세요
SELECT 
    C.CAR_ID
FROM CAR_RENTAL_COMPANY_CAR C
JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY H  ON C.CAR_ID=H.CAR_ID
WHERE C.CAR_TYPE LIKE '%세단%'
AND H.START_DATE >'2022-09-30'
GROUP BY C.CAR_ID
ORDER BY C.CAR_ID DESC