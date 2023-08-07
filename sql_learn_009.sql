/*
[weblog] テープルからユーザー別の訪問回数(number_of_visits) を取得してください。
結果テーブルは[cid] と[number_of_visits] の2カラムとし、訪問回数が多い順に3ユーザーに絞り込んで表示します。
*/

/*自分の回答*/
select cid, count(*) as number_of_visits
 from sample.web_log
 group by cid
 order by number_of_visits desc
 limit 3




/*正解*/
select cid, max(session_count) - min(session_count) + 1 as number_of_visits
from sample.web_log
group by cid
order by number_of_visits desc
limit 3


/* <振り返り>
- プレミアムユーザー数をカウントするときはcount(distinct user_id)で指定する
 */

select cid, max(session_count) as max
, min(session_count) as min
, max(session_count) - min(session_count) + 1 as number_of_visits
from sample.web_log
group by cid
order by number_of_visits desc
limit 3


/*
訪問回数が「19」回ともっとも多いユーザーは、[web_log]テーブルに記録された[session_count]の最小値が「3」です。これは、ログにこのユーザーの「3回目の訪問」が記録されているということです。同様に最大値として「21回目の訪問」が記録されています。ということは、ログに記録されている期間中には19回訪問した、ということになります。
訪問回数が「17」回と2番目に多いユーザーは、初回訪問である「1」が最小値、「17」が最大値ですので、初回訪問から17回目の訪問まで、合計17回訪問した、ということになります。
*/