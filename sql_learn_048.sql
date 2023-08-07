/*
[customers]テーブルから、姓が「山」で終わる男性顧客の顧客ID(user_id)と氏名(name)を取得してください
*/

/*自分の回答*/
select user_id, name

from sample.customers
where gender = 1 
and name like ("%山 %")

/*正解*/
SELECT
  user_id
  , name
FROM
  sample.customers
WHERE
  SUBSTR(name, 1, STRPOS(name, " ") - 1) LIKE "%山"
AND gender = 1


/* <振り返り>
- 正解のクエリではないが結果は同じかつ、自分のほうがスマートな回答ではないか
 */
