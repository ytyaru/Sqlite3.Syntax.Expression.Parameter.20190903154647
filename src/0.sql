.echo on
.param init
.param set ?1 A
select 'A' = ?1;
select 'B' = ?1;
.param set ?1 B
select 'B' = ?1;
select 'B' = ?2;
.param list

.param init
.param set :query A
select 'A' = :query;
select 'B' = :query;
.param set :query B
select 'B' = :query;

.param init
.param set @query A
select 'A' = @query;
select 'B' = @query;

.param init
.param set $query A
select 'A' = $query;
select 'B' = $query;

.param init
.param set $human(name) Yamada
.param set $human(age) 20
select $human(name);
select $human(age);
.param init
.param set $human::name Yamada
.param set $human::age 20
select $human::name;
select $human::age;
.param init
.param set $sys::human::name Yamada
.param set $sys::human::age 20
select $sys::human::name;
select $sys::human::age;
select $sys::human;
.param init
.param set $sys::human(name) Yamada
.param set $sys::human(age) 20
select $sys::human(name);
select $sys::human(age);
.param init
.param set $sys.human(name) Yamada
.param set $sys.human(age) 20
select $sys.human(name);
select $sys.human(age);
.param init
.param set $ns::sys(human.name) Yamada
.param set $ns::sys(human.age) 20
select $ns::sys(human.name);
select $ns::sys(human.age);
select $ns::sys(human);
