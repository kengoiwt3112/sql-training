/*
[customers]テーブルから、最高齢の誕生日を取得してください
*/

/*自分の回答*/
select birthday
from sample.customers
where birthday is not null
order by birthday asc
limit 1

/*正解*/
SELECT
  birthday
FROM
  sample.customers
WHERE
  birthday IS NOT NULL
ORDER BY
  birthday
LIMIT 1

/* <振り返り>
- 正解
 */
