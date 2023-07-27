/*
[sales]テーブルを対象に、[order_id][quantity][revenue]フィールドに加えて、[quantity]を「1」増やした個数のフィールド（new_aty）と、
[quantity]を「1」増やしたときの販売金額のフィールド（new_revenue)を取得してください。
なお、結果テーブルは[new_revenue]の大きい順に3レコードに絞り込んでください。
*/

/*自分の回答*/
select order_id
, quantity
, revenue
, quantity + 1 as new_qty
, revenue * (quantity + 1) as new_revenue
from `sample.sales`
order by new_revenue desc
limit 3

/*正解*/
select order_id
, quantity
, quantity + 1 as new_quantiry
, revenue
, (revenue / quantity) * (quantity + 1) as new_revenue
from sample.sales
order by 5 desc
limit 3

/* <振り返り>
- revenue / quantity をして単価を出して、単価に(quantity + 1)を掛け算する必要があった
- order by は5を指定
 */
