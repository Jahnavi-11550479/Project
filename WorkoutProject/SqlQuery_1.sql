create database Projects
use Projects

drop table Workout_Category
--this is comment
create table WorkOut_Categorys
(
category_id int,
category_name varchar(64),
constraint pk_category_id primary key(category_id)
)

create table WorkOut_Collections
(
workout_title varchar(128),
workout_note varchar(256),
calories_burn_per_min float,
category_id int,
workout_id int,
constraint pk_workout_id primary key(workout_id),
constraint fk_WorkOut_Collections_WorkOut_Categorys foreign key(Category_id) references WorkOut_Categorys(category_id)
)


create table WorkOut_Actives
(
id int identity primary key,
workout_id int,
start_time time,
start_date date,
end_date date,
end_time time,
comment varchar(64),
status bit,
constraint fk_WorkOut_Actives_WorkOut_Collections foreign key(workout_id)references WorkOut_Collections(workout_id)
)

select * from WorkOut_Categorys
select * from WorkOut_Collections
select * from WorkOut_Actives


