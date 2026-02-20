-- 있었는데요 없었습니다
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59043
-- 작성자: 김수임
-- 작성일: 2026. 02. 20. 14:46:26

-- 코드를 입력하세요
SELECT
    i.ANIMAL_ID,
    i.NAME
from ANIMAL_INS i
join ANIMAL_OUTS o
on i.ANIMAL_ID = o.ANIMAL_ID
where o.datetime - i.datetime < 0
group by ANIMAL_ID
order by i.datetime