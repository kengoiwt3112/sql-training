/*
[products]テーブルから「ゼリー」 のカテゴリーを除いたレコードの[cost]の分散を求めてください。
なお、データは全数（母集団）であり、サンプルではありません。
結果テーブルのカラム名は[var_cost]とします。
*/

/*自分の回答*/
select var_pop(cost) as var_cost
from sample.products
where product_category <> "ゼリー"


/*正解*/
SELECT
  VAR_POP(cost) AS var_cost
FROM
  sample.products
WHERE
  product_category NOT IN("ゼリー")

/* <振り返り>
- 正解だが、not in ゼリーを使うのも良い
 */
