/*
[customers]テーブルから『「プレミアム顧客」 または「 1970年代生まれの顧客」』で「 名前の最後が"美"で終わる女性」の 全フィールドを取得してください。
結果テーブルは、年齢が高い順の3レコードに絞り込みます。
*/

/*自分の回答*/
select * from sample.customers
where ( is_premium is true or birthday between "1970-01-01" and "1979-12-31" )
and name like "%美"
order by birthday
limit 3



/*正解*/
select * 
from sample.customers
where ( is_premium is true or
birthday between "1970-01-01" and "1979-12-31" )
and name like "%美"
and gender = 2
order by birthday
limit 3

/* <振り返り>
- 女性で絞り込むのを忘れている
 */
