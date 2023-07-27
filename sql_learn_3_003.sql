/*
[customers]テーブルから、[birthday]フィールドの値がnullでなく、[is_premium]が「true」のレコードの全フィールドを取得してください。
結果テーブルは年齢の若い順に並び替え、誕生日が同じ場合は、[register_date]の古い順に並べ替えてください。
また、3レコードに絞り込んでください。
*/

/*自分の回答*/
select *
from sample.customers
where birthday is not null and is_premium is true
order by birthday desc, register_date asc
limit 3


/*正解*/
select * from sample.customers
where birthday is not null and is_premium is true
order by birthday desc, register_date
limit 3


/* <振り返り>
- ほぼ正解だが、register_dateのascはなくても良い
 */
