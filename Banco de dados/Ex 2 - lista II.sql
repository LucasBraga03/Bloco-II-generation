create database db_pizza_legal;

use db_pizza_legal;

create table tb_categoria(

id bigint auto_increment,
tamanho varchar(10),
borda varchar (10),
primary key (id)

);



insert into tb_categoria (tamanho,borda) values ("broto","com borda"),
("broto","sem borda"),("média","com borda"),("média","sem borda"),("grande","com borda");

select *from tb_categoria;



create table tb_pizza (
id bigint auto_increment,
sabor varchar(50),
categoria_id bigint,
valor decimal(6,2),
primary key (id),
foreign key (categoria_id) references tb_categoria (id)

);



insert into tb_pizza (sabor,categoria_id,valor) values ("calabresa",1,10),("calabresa",4,30),("calabresa",2,20),("frango",4,30),("frango",5,50),("calabresa",5,50),("palmito",1,5),("palmito",4,30);

select *from tb_pizza;

select*from tb_pizza where valor>45;
select*from tb_pizza where valor between 29 and 60;

select*from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id =tb_categoria.id;

select tb_personagem.nome, tb_classe.estilo, tb_classe.genero from tb_personagem left join tb_classe on tb_personagem.classe_id =tb_classe.id;

select*from tb_pizza where sabor = "calabresa";