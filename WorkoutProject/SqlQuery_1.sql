create database Project
use Project

drop table Workout_Category

create table WorkOut_Category
(
category_id int,
category_name varchar(64),
constraint pk_category_id primary key(category_id)
)

create table WorkOut_Collection
(
workout_title varchar(128),
workout_note varchar(256),
calories_burn_per_min float,
category_id int,
workout_id int,
constraint pk_workout_id primary key(workout_id),
constraint fk_WorkOut_Collection_WorkOut_Category foreign key(Category_id) references WorkOut_Category(category_id)
)


create table WorkOut_Active
(
workout_id int,
start_time time,
start_date date,
end_date date,
end_time time,
comment varchar(64),
status bit,
constraint fk_WorkOut_Active_WorkOut_Collection foreign key(workout_id)references WorkOut_Collection(workout_id)
)

select * from WorkOut_Category
select * from WorkOut_Collection
select * from WorkOut_Active


