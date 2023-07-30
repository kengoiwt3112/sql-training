/*
[products]テーブルから最も古い日付・時刻(date_time)を取得してください。
カラム名は[oldest_datetime]としあｍす
*/

/*自分の回答*/

select min(date_time) as oldest_datetime
from sample.sales

/*正解*/
SELECT
  date_time AS oldest_datetime
FROM
  sample.sales
ORDER BY
  date_time
LIMIT 1

/* <振り返り>
- どちらでも正解
 */
