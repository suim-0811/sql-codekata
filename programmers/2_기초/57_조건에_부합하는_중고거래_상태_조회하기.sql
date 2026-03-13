-- 조건에 부합하는 중고거래 상태 조회하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164672
-- 작성자: 김수임
-- 작성일: 2026. 03. 13. 09:48:46

-- 코드를 입력하세요
SELECT
    BOARD_ID,
    WRITER_ID,
    TITLE,
    PRICE,
    case STATUS 
    when 'SALE' THEN "판매중"
    when 'RESERVED' THEN "예약중"
    ELSE '거래완료'
    END AS STATUS
from USED_GOODS_BOARD
WHERE CREATED_DATE = '2022-10-05'
ORDER BY BOARD_ID DESC