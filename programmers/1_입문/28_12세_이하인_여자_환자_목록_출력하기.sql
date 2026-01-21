-- 12세 이하인 여자 환자 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132201
-- 작성자: 김수임
-- 작성일: 2026. 01. 21. 09:42:04

-- 코드를 입력하세요
SELECT
    PT_NAME,
    PT_NO,
    GEND_CD,
    AGE,
    CASE WHEN TLNO IS NULL THEN "NONE" ELSE TLNO END AS TLNO
FROM PATIENT
WHERE AGE <= 12 
AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME;