/*
[products]テーブルのうち、カテゴリ(product_category)は「クッキー」だが、商品名(product_name)がクッキーで終わらないレコードを全カラム取得してください
*/

/*自分の回答*/
select * from sample.products
where product_category = "クッキー"
and product_name not like ("%クッキー")

/*正解*/
SELECT
  *
FROM
  sample.products
WHERE
  product_category = "クッキー"
AND REGEXP_CONTAINS(product_name, r"クッキー$") = false

/* <振り返り>
- 正解のクエリではないが結果は同じかつ、自分のほうがスマートな回答ではないか
 */
