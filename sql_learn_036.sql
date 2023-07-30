/*
[sales]テーブルから、最も高額な[revenue]が記録されているレコードの[order_id][user_id][revenue]を取得してください
*/

/*自分の回答*/
select order_id, user_id, revenue
from sample.sales
order by revenue desc
limit 1

/*正解*/
SELECT
  order_id
  , user_id
  , revenue
FROM
  sample.sales
ORDER BY
  revenue DESC
LIMIT 1

/* <振り返り>
- 正解
 */
