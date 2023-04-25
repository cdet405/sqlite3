select users, count(users) as attempts from(select json_extract(data, '$.users') as users from bips) group by users having attempts >= 5 order by attempts desc
