/* [sales]テーブルの全てのフィールドから[revenue]だけを取得せずに、代わりに[revenue]に[1.1]をかけた値を[revenue_with_tax]に格納してください。
ただしSELECTには「*」を使用し、結果テーブルは[order_id]の小さい順に3レコードに絞り込んでください。
*/


/* 自分の回答 */

SELECT revenue * 1.1 AS revenue_with_tax 
FROM sample.sales 
ORDER BY order_id ASC
LIMIT 3

/* 正解 */

SELECT * EXCEPT (revenue), revenue * 1.1 AS revenue_with_tax
FROM sample.sales
ORDER BY 1
LIMIT 3

/* <振り返り>
・revennueだけを取得しないので「* EXCEPT(revenue)」
・ORDER BY 1 という表記でもOK
 */

 