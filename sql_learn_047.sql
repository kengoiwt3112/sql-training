/*
[sales]テーブルから、2017年2月1日から2月10日までの期間で、最も販売金額(revenue)が大きいレコードを全カラム取得してください。
*/

/*自分の回答*/
select * from sample.sales
where date_time between "2017-02-01" and "2017-02-10"
order by revenue desc
limit 1

/*正解*/
SELECT
  *
FROM
  sample.sales
WHERE
  date_time BETWEEN "2017-02-01" AND "2017-02-10"
ORDER BY
  revenue DESC
LIMIT 1


/* <振り返り>
- 正解
 */
