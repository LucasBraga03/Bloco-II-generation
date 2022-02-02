create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(

id bigint auto_increment,
tipo varchar (10),
entrega varchar (10),
primary key (id)

);


insert into tb_categoria (tipo,entrega) values ("interno","retirada"),
("interno","frete"),("externo","retirada"),("externo","frete");

select *from tb_categoria;



create table tb_produto (
id bigint auto_increment,
produto varchar(50),
categoria_id bigint,
valor decimal(6,2),
primary key (id),
foreign key (categoria_id) references tb_categoria (id)

);



insert into tb_produto (produto,categoria_id,valor) values ("piso exterono",3,10),("piso interno",2,30),("tinta interna",2,20),("tinta externa",4,10),("cimento",4,10),("móvel",2,30),("cimento cola",3,5),("ferragem",3,10);

select *from tb_produto;

select*from tb_produto where valor>50;
select*from tb_pizza where valor between 3 and 60;

select*from tb_pizza where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id =tb_categoria.id;

select*from tb_produto where categoria_id = 2 and 1;