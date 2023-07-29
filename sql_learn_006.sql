/*
[customers]テーブルに誕生日が同じユーザが何人いるか調べてください。
 結果テーブルは誕生日(birthday)と、その誕生日の顧客数(users)の2から6歳1つの誕生日に2人以上の顧客が入るテーブルに絞り込んで表示してください
*/

/*自分の回答*/
select birthday, count(distinct user_id) as users
from sample.customers
group by birthday
having users >= 2



/*正解*/
select birthday, count(*) as users
from sample.customers
where birthday is not null
group by birthday
having users > 1



/* <振り返り>
- wehereでbirthday is not nullとすべし
 */
