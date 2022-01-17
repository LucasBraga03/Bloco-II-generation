create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(

id bigint auto_increment,
tipo varchar (10),
entrega varchar (10),
primary key (id)

);


insert into tb_categoria (tipo,entrega) values ("verdura","retirada"),
("verdura","frete"),("fruta","retirada"),("fruta","frete");

select *from tb_categoria;



create table tb_produto (
id bigint auto_increment,
produto varchar(50),
categoria_id bigint,
valor decimal(6,2),
primary key (id),
foreign key (categoria_id) references tb_categoria (id)

);



insert into tb_produto (produto,categoria_id,valor) values ("banana",3,10),("beterraba",2,30),("quiabo",2,20),("uva",4,10),("maça",4,10),("xuxu",2,30),("melão",3,5),("mamão",3,10);

select *from tb_produto;

select*from tb_produto where valor>50;
select*from tb_pizza where valor between 3 and 60;

select*from tb_pizza where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id =tb_categoria.id;

select*from tb_produto where categoria_id = 2 and 1;