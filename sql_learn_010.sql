/*
[products] テーブルから、仕入金額（cost) ごとの商品アイテム数を取得してください。
仕入金額は「0円以上300円未満」「300円以上600円未満」 と、300円刻みで「900円以上1,199 円未満」までを分類して
[cost_range] とします。並べ替えは[cost range]の小さい順としてください。
*/

/*自分の回答*/
select 
case
when cost between 0 and 299 then "0円以上300円未満"
when cost between 300 and 599 then "300円以上600円未満"
when cost between 600 and 899 then "600円以上900円未満"
when cost between 900 and 1199 then "900円以上1199円未満"
end as cost_range
, count(*) as items
from `sample.products`
group by cost_range
order by cost_range asc




/*正解*/
select 
case
when cost between 0 and 299 then "0円以上300円未満"
when cost between 300 and 599 then "300円以上600円未満"
when cost between 600 and 899 then "600円以上900円未満"
when cost between 900 and 1199 then "900円以上1199円未満"
end as cost_range
, count(distinct product_id) as items
from `sample.products`
group by cost_range
order by cost_range asc


/* <振り返り>
- product_idがnullである可能性があるのでcount(distinct product_id)を入れる
 */
