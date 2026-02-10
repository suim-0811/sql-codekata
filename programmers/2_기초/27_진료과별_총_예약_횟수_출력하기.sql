-- 진료과별 총 예약 횟수 출력하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132202
-- 작성자: 김수임
-- 작성일: 2026. 02. 10. 09:21:17

-- 코드를 입력하세요
SELECT
    MCDP_CD AS '진료과 코드',
    COUNT(DISTINCT APNT_NO) AS '5월예약건수'
FROM APPOINTMENT
WHERE YEAR(APNT_YMD) = 2022 AND MONTH(APNT_YMD) = 5
GROUP BY MCDP_CD
ORDER BY 2, 1