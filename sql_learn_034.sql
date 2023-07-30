/*
[products]テーブルから、原価(cost)の標準偏差を求めてください。
ただし、[products]テーブルはサンプルではなく、全数（母集団）と考えます。
*/

/*自分の回答*/

select stddev_pop(cost) as standard_deviation
from sample.products


/*正解*/
SELECT
  STDDEV_POP(cost) AS std_dev_cost
FROM
  sample.products

/* <振り返り>
- 標準偏差は[STDDEV]で覚える
 */
