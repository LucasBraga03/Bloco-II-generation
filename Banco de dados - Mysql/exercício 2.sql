create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
produto varchar (255) not null,
valor decimal(6,2) not null,
estoque int not null,
tamanho varchar (3),
primary key (id)
);

insert into tb_produtos(produto,valor,estoque,tamanho) values ("calça",10.00,3,"m");
insert into tb_produtos(produto,valor,estoque,tamanho) values ("camiseta",9.80,5,"g");
insert into tb_produtos(produto,valor,estoque,tamanho) values ("camiseta",9.80,2,"p");
insert into tb_produtos(produto,valor,estoque,tamanho) values ("camiseta",9.80,10,"m");
insert into tb_produtos(produto,valor,estoque,tamanho) values ("calça",10.00,9,"g");
insert into tb_produtos(produto,valor,estoque,tamanho) values ("jaqueta",50.00,30,"gg");
insert into tb_produtos(produto,valor,estoque,tamanho) values ("jaqueta",50.00,10,"m");
insert into tb_produtos(produto,valor,estoque,tamanho) values ("sapato",100.00,1,"m");

select * from tb_produtos where valor>500;
select * from tb_produtos where valor<500;

update tb_produtos set estoque = 40 where id=8;









