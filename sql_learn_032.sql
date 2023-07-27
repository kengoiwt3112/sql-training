/*
[customers]テーブルから 顧客をランダムに3人選択し、すべてのカラムを取得してください。
*/

/*自分の回答*/
select * from sample.customers
limit 3


/*正解*/
SELECT
  *
FROM
  sample.customers
ORDER BY
  RAND()
LIMIT 3

/* <振り返り>
- order by rand()
 */
