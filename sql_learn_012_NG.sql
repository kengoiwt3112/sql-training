/*
[sales] テーブルから商品ID (product_id) 別の販売個数(quantity)の合計と、
その合計がテーブル全体の販売個数の何％になっているかの割合(sales_share) を調べてください。
[sales_share] は小数で構いません。
結果テープルは、商品ID (product_id)、販売個数の合計(sum_qty)、
販売個数の割合(sales_share) の3 カラムとし、[sales_share] の高い順に5レコードに絞り込んでください。
*/

/*自分の回答*/
with sum_qty as (
    select sum(quantity)
    from sample.sales
)

select product_id, sum(quantity) / sum_qty as sales_share
from sample.sales
order by 2
limit 5 



/*正解*/


/* <振り返り>
- inner joinを利用する
 */
