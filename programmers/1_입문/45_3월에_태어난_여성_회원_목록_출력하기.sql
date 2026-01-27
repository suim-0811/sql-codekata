-- 3월에 태어난 여성 회원 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131120
-- 작성자: 김수임
-- 작성일: 2026. 01. 27. 22:25:04

-- 코드를 입력하세요
SELECT
    MEMBER_ID,
    MEMBER_NAME,
    GENDER,
    DATE_FORMAT(DATE_OF_BIRTH, "%Y-%m-%d")
FROM MEMBER_PROFILE
WHERE GENDER ='W'
    AND MONTH(DATE_OF_BIRTH) = 3
    AND TLNO IS NOT NULL
ORDER BY MEMBER_ID;