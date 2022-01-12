create database db_rh;

use db_rh;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
horario bigint not null,
salario decimal (6,2) not null,
nivel bigint not null,
primary key (id)
);

insert into tb_funcionarios(nome,horario,salario,nivel) values ("matheus", 8,3000,2);
insert into tb_funcionarios(nome,horario,salario,nivel) values ("lucas", 8,3000,1);
insert into tb_funcionarios(nome,horario,salario,nivel) values ("roberto", 9,1500,2);
insert into tb_funcionarios(nome,horario,salario,nivel) values ("gabriela", 10,6000,6);
insert into tb_funcionarios(nome,horario,salario,nivel) values ("gusta", 6,1000,1);

delete from tb_funcionarios where id=1;
delete from tb_funcionarios where id=2;
delete from tb_funcionarios where id=3;

select salario from tb_funcionarios  where salario>2000;
select salario from tb_funcionarios  where salario<2000;

update tb_funcionarios set salario=6000 where id = 8;
