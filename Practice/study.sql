select sname, pid from Suppliers natural join Catalog;

select pname from Parts natural join Catalog where price >= 10;

select pid, count(sid) as count, min(price) as minprice from Parts natural left join Catalog group by pid;

select count(pid) from (select pid from Parts except select pid from Catalog);

select pid, sid from Catalog where price is NULL;

select sid, avg(price) from Suppliers group by sid;

select pid, pname from (select pid, count(sid) as cnt from Catalog group by pid having cnt = 3) natural join Parts;

select pid from Catalog where sid = 'amazon' intersect select pid from Catalog where sid = 'walmart';

select x - y as diff from
  (select avg(price) as x from Catalog where pid = 12 group by pid) as A,
  (select avg(price) as y from Catalog where pid = 32 group by pid) as B;

select pid, sname, price from
  (select pid, min(price) as price from Catalog group by pid) as M
  natural join Catalog natural join Suppliers;

select pid, price from Catalog group by pid, price having count(sid) >= 2;
