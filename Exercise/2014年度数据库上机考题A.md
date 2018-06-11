# 数据库系统原理”上机考试题(A卷)

数据库为sql-server2017

数据库备份文件见根目录下Database Backup/lib.bak(.sql)

数据库模式如下：

图书类别（类别编号，类别名， 藏书数目）

图书（图书编号，书名，作者，价格，类别编号）

学生（学号，姓名， 学生类别）

借书情况（学号，图书编号，借书日期）

注：上面数据仅供参考，具体的SQL语句不应该和具体的数据有关

1. 给出作者为”科曼”的图书信息（图书编号，图书名，价格）

```sql
select bookid, bookname, price from book where author = '科曼' 
```

|bookid| bookname |price|
|---|--|--|
|b009 |算法导论| 85|

2. 给出跟经济学有关的图书的所有信息（书名中包含“经济学”）。（bookid，bookname，author，price，catid）

```sql
select * from book where bookname like '%经济学%' |
```

| bookid | bookname   | author | price | catid |
| ------ | ---------- | ------ | ----- | ----- |
| b007   | 微观经济学 | 喻德坚 | 48    | c2    |

3. 给出图书类别编号为“c2”且图书编号最小的那本书。（bookid，bookname，author）

```sql
select top 1 bookid, bookname, author from book where catid = 'c2' order by bookid asc
```

|bookid| bookname| author|
|----|---|---|
|b001 |货币银行学 |李双伟|


4. 请列出”经济”类被借阅的图书的信息(bookid, bookname，borrowdate)

```sql
select book.bookid, bookname, borrowdate
from book, borrow, category
where catname = '经济'and book.bookid = borrow.bookid and book.catid =
category.catid
```

|bookid |bookname| borrowdate|
|---|---|----|
|b001 |货币银行学 |2010-10-15 00:00:00.000|
|b007|微观经济学|2010-10-11|00:00:00.000|

5. 给出所有研究生借阅图书的数目(category，num)

```sql
select catid, count(\*)num
from borrow join book on borrow.bookid = book.bookid
where stuid in (
select stuid
from student
where degree = '研究生'
)
group by catid
```

6. 给出学号为“200810111”的同学最近一次借阅（借阅日期最大）的图书信息（bookid，bookname）

```sql
select top 1 book.bookid, bookname
from borrow join book on borrow.bookid = book.bookid
where stuid = '200810111'
order by borrowdate desc
```

|bookid| bookname|
|---|----|
|b032 |马克思主义基本原理概论|

7. 给出在[2010-10-1,2010-1020]这段期间被借阅次数超过两次的图书信息，结果按图书编号从小到大排序（bookid,bookname,author）

```sql
select book.bookid, bookname, author
from book
join (
select bookid
from borrow
where borrowdate between '2010-10-1' and '2010-10-20'
group by bookid
having count(stuid) \>2)a on book.bookid = a.bookid
order by book.bookid asc
```

|bookid |bookname| author|
|----|---|---|
| b003| 数据库系统全书 |加西亚-莫里纳|
|b014| 数学分析原理 |卢丁|

8. 给出借阅了所有图书类别的学生（stuid,stuname)

```sql
select student.stuid, student.stuname
from student
where student.stuid = (
	select stuid
	from(
		select stuid, catid
		from borrow join book on borrow.bookid = book.bookid
		group by stuid, catid
		)a
group by a.stuid
having count(a.catid) = (
	select count(catid)
	from category
	)
)
```

|stuid	|stuname|
|---|--|
|200810111|王玲|

9. 李飞同学弄丢了他在2010年10月9号（含当天）以后借的所有书，若已知计算机技术类图书原价3倍赔偿，其它类图书按原价2倍赔偿，给出他需要赔偿的钱数（赔偿数额）

```sql
select sum(case catname when'计算机技术' then 3\*price else 2\*price end)赔偿数额
from book join category on book.catid = category.catid
join(
	select bookid
	from student join borrow on student.stuid = borrow.stuid
	where stuname = '李飞' and borrowdate \>= '2010-10-9'
	)a on a.bookid = book.bookid
```

|赔偿数额|
|--|
|251|

10. 给出借阅“c1”类别图书次数最多的学生。（stuid，stuname，borrowcount）

```sql
select student.stuid, stuname, b.borrowcount
from (select stuid, count(catid)borrowcount
from borrow join book on borrow.bookid = book.bookid
where catid = 'c1'
group by stuid)b join student on student.stuid = b.stuid
where b.borrowcount = (
select max(a.borrowtime)
from
(select stuid, count(catid)borrowtime
from borrow join book on borrow.bookid = book.bookid
where catid = 'c1'
group by stuid)a)
```

|stuid|	stuname|	borrowcount|
|---|---|---|
|1200910211|          	周昕|	4|
|200810111|           	王玲|	4|
