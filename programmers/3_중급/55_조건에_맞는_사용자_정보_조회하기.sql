-- 조건에 맞는 사용자 정보 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164670
-- 작성자: 김수임
-- 작성일: 2026. 04. 10. 09:41:52

-- 코드를 입력하세요
SELECT
    USER_ID,
    NICKNAME,
    CONCAT(CITY," ",
    STREET_ADDRESS1," ",
    STREET_ADDRESS2) AS '전체주소',
    CONCAT(SUBSTR(TLNO, 1, 3), '-', SUBSTR(TLNO, 4, 4), '-', SUBSTR(TLNO, 8, 4)) AS '전화번호'
FROM USED_GOODS_USER U
JOIN
(SELECT 
    WRITER_ID
FROM USED_GOODS_BOARD B
GROUP BY  WRITER_ID
HAVING COUNT(*)>=3) B
ON U.USER_ID=B.WRITER_ID
ORDER BY 1 DESC;