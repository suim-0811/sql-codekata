-- 재구매가 일어난 상품과 회원 리스트 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131536
-- 작성자: 김수임
-- 작성일: 2026. 03. 12. 19:11:03

-- 코드를 입력하세요
SELECT 
    USER_ID,
    PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) >1
ORDER BY USER_ID, PRODUCT_ID DESC;