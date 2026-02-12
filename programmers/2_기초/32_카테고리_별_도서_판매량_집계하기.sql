-- 카테고리 별 도서 판매량 집계하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144855
-- 작성자: 김수임
-- 작성일: 2026. 02. 12. 14:18:13

-- 코드를 입력하세요
SELECT
    b.CATEGORY,
    SUM(bs.SALES) as TOTAL_SALES
FROM BOOK as b
join BOOK_SALES as bs
on b.BOOK_ID = bs.BOOK_ID
WHERE bs.SALES_DATE BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY 1
ORDER BY 1