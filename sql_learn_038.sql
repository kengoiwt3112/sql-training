/*
 [web_log]テーブルから、メディア（media）として「cpc」が最初に記録された[date_time]を取得してください。
*/

/*自分の回答*/
select date_time 
from sample.web_log
where media = "cpc"
order by date_time asc
limit 1

/*正解*/
SELECT
  date_time
FROM
  sample.web_log
WHERE
  media = "cpc"
ORDER BY
  date_time
LIMIT 1

/* <振り返り>
- 正解
 */
