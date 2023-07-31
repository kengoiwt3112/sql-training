/*
[sales] テーブルから「3」でも「7」でも割り切れる[order_id]で注文した顧客のうち、
もっとも小さい[user_id]を取得してください
*/

/*自分の回答*/
select user_id
from sample.sales
where mod(order_id,3) = 0 and mod(order_id, 7) = 0
order by user_id asc
limit 1

/*正解*/
SELECT
  user_id
FROM
  sample.sales
WHERE
  MOD(order_id, 3) = 0
AND MOD(order_id, 7) = 0
ORDER BY
  1
LIMIT 1

/* <振り返り>
- 正解。ただしmod関数を理解しておく必要あり
 */
