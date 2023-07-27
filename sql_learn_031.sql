/*
[customers]テーブルから『「山」ではじまって「子」で終わる』名前の顧客のレコードを全カラム取得してください。
*/

/*自分の回答*/
select * from sample.customers
where name like "山%"
and name like "%子"



/*正解*/
SELECT
  *
FROM
  sample.customers
WHERE
  name LIKE "山%子"

/* <振り返り>
- "山%子"で良い
 */
