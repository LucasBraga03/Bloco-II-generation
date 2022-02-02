create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(

id bigint auto_increment,
tipo varchar (10),
entrega varchar (10),
primary key (id)

);


insert into tb_categoria (tipo,entrega) values ("higiene","retirada"),
("higiene","frete"),("remédio","retirada"),("remédio","frete");

select *from tb_categoria;



create table tb_produto (
id bigint auto_increment,
produto varchar(50),
categoria_id bigint,
valor decimal(6,2),
primary key (id),
foreign key (categoria_id) references tb_categoria (id)

);



insert into tb_produto (produto,categoria_id,valor) values ("dipirona",3,10),("shampoo",2,30),("desodarante",2,20),("droflex",4,10),("benegripe",4,10),("preservativo",2,30),("estomazil",3,5),("eno",3,10);

select *from tb_produto;

select*from tb_produto where valor>50;
select*from tb_pizza where valor between 3 and 60;

select*from tb_pizza where nome like "%b%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id =tb_categoria.id;

select*from tb_produto where categoria_id = 2;