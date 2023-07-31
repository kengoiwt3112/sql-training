/*
[sales] テーブルで初めて値引き販売が記録された[date_time]を取得してください
*/

/*自分の回答*/
select date_time
from sample.sales
where is_proper is true
order by date_time asc
limit 1

/*正解*/
SELECT
  date_time
FROM
  sample.sales
WHERE
  is_proper IS FALSE
ORDER BY
  date_time
LIMIT 1

/* <振り返り>
- 値引き販売はfalse
 */
