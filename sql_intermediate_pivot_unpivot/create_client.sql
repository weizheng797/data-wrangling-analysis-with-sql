use test;

drop table if exists client;
create table client(
	client_id int not null,
    client_name varchar(255),
    client_type varchar(255),
    primary key (client_id)
);

insert into client values
	(1000, 'John Smith', 'Individual'),
    (1001, 'Andy Adam', 'Individual'),
	(1002, 'Jane Jones', 'Individual'),
	(1003, 'ACME Inc', 'Organization'),
	(1004, 'Julie Mann', 'Individual'),
	(1005, 'Stan Smith', 'Individual');

select * from client;

