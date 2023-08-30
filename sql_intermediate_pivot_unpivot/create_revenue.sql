use test;

drop table if exists revenue;
create table revenue(
	client_id int not null,
    client_name varchar(255),
    gift_type varchar(255),
    amount float(10, 2),
    fiscal_year int,
	foreign key (client_id) references client(client_id)
);

insert into revenue values
	(1000, 'John Smith', 'Pledge', 1500.00, 2005),
    (1000, 'John Smith', 'Recurring Gift', 20.00, 2017),
    (1000, 'John Smith', 'One-time gift', 325.00, 2017),
    (1002, 'Jane Jones', 'One-time gift', 100.00, 2015),
    (1002, 'Jane Jones', 'One-time gift', 30.00, 2011);

select * from revenue;