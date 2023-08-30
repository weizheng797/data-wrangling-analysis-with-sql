use test;

drop table if exists marketing_segment;
create table marketing_segment(
	client_id int not null,
    segment_a_date date,
    segment_b_date date,
    segment_c_date date,
    primary key (client_id)
);

insert into marketing_segment values
	(1000, null, '2018.01.13', null),
    (1001, '2017.05.21', null, null),
    (1002, '2018.03.13', null, null),
    (1003, null, null, '2017.12.25'),
    (1004, null, '2017.02.28', null);
    
select * from marketing_segment
