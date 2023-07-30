/*
[sales] テーブルと[products ] テープルを結合して、
カテゴリ(product_category)別の販売金額（revenue)の合計を集計し、
金額の大きい順に並べてください。
*/

/*自分の回答*/
select product_category, sum(revenue) as sum_revenue
 from sample.products
join sample.sales
using (product_id)
group by product_category
order by 2 desc




/*正解*/
select product_category
, sum(revenue) as sum_revenue
from sample.sales
inner join sample.products
using (product_id)
group by product_category
order by 2 desc


/* <振り返り>
- inner joinを利用する
 */
