use test;

drop table if exists client_role;
create table client_role(
	client_id int not null,
    client_name varchar(255),
    client_role varchar(255),
    foreign key (client_id) references client(client_id)
);

insert into client_role
values
	(1000, 'John Smith', 'Board Member'),
    (1000, 'John Smith', 'Staff'),
    (1000, 'John Smith', 'Campaign Chair'),
    (1001, 'Andy Adam', 'Prospect'),
    (1001, 'Andy Adam', 'Parent'),
    (1002, 'Jane Jones', 'Board Member');
    
select * from client_role;