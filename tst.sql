
create table tst (id int primary key, info varchar(100));

insert into tst values (100,'qqq');
insert into tst values (200,'qqq');
insert into tst values (300,'qqq');

select * from tst order by id;

update tst set info='www' where id=200;
update tst set info='zzz' where id=300;

select * from tst order by id;

delete from tst where id=200;

select * from tst order by id;

drop table tst;

