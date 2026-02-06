-- 고양이와 개는 몇 마리 있을까
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59040
-- 작성자: 김수임
-- 작성일: 2026. 02. 06. 09:39:12

-- 코드를 입력하세요
SELECT
    ANIMAL_TYPE,
    count(*) as count
FROM ANIMAL_INS
WHERE ANIMAL_TYPE IN('Cat', 'Dog')
group by ANIMAL_TYPE
order by ANIMAL_TYPE asc;