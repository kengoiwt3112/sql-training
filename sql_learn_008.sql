/*
[customers] テープルから、プレミアム顧客がもっとも多い都道府県とプレミアム顧客数を求めてください。
結果テープルは、都道府県名(prefecture)とプレミアム顧客数(users)の2カラムとします。
*/

/*自分の回答*/
select prefecture, count(*) as premium_users
from sample.customers
where is_premium is true
group by prefecture
order by 2 desc



/*正解*/
select prefecture, count(distinct user_id) as users
from sample.customers
where is_premium is true
group by prefecture
order by 2 desc
limit 1


/* <振り返り>
- プレミアムユーザー数をカウントするときはcount(distinct user_id)で指定する
 */
