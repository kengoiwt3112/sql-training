/*
[customers]テーブルから、[prefecture] フィールドが東京、千葉、埼玉、神奈川以外のプレミアム顧客の全フィールドを取得してください。
結果テーブルは、年齢が若い順に並べ替えて3レコードだけ表示します。
*/

/*自分の回答*/
select * from sample.customers
where prefecture not in ("東京", "千葉", "埼玉", "神奈川")
and is_premium is true
order by birthday desc
limit 3



/*正解*/
/*同上*/


/* <振り返り>
- なし
 */
