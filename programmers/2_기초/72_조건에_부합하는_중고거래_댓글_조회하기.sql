-- 조건에 부합하는 중고거래 댓글 조회하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164673
-- 작성자: 김수임
-- 작성일: 2026. 03. 16. 09:44:11

-- 코드를 입력하세요
SELECT 
    UB.TITLE,
    UB.BOARD_ID,
    UR.REPLY_ID,
    UR.WRITER_ID,
    UR.CONTENTS,
    DATE_FORMAT(UR.CREATED_DATE, '%Y-%m-%d') as CREATED_DATE
FROM USED_GOODS_BOARD UB
JOIN USED_GOODS_REPLY UR ON UB.BOARD_ID=UR.BOARD_ID
WHERE UB.CREATED_DATE BETWEEN '2022-10-01' AND '2022-10-31'
GROUP BY BOARD_ID
ORDER BY UR.CREATED_DATE, UB.TITLE