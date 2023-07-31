/*
[customers]テーブルから、『名前(name)が「子」で終わる』最も年齢が高い顧客のレコードを全カラム取得してください。
*/

/*自分の回答*/
select *
from sample.customers
where name in ("%子")
order by birthday asc
limit 1

/*正解*/
SELECT
  *
FROM
  sample.customers
WHERE
  name LIKE("%子")
AND birthday IS NOT NULL
ORDER BY
  birthday
LIMIT 1

/* <振り返り>
- where name in ("%子")ではなく、where name lik("%子")
- and birthday is not null
 */
