create database db_colegio;

use db_colegio;

create table tb_colegio(
id bigint auto_increment,
nome varchar(100),
idade bigint,
turma int,
nota decimal (6,2),
primary key (id)

);

insert into tb_colegio (nome,idade,turma,nota) values ("maria", 17, 30, 10.00);
insert into tb_colegio (nome,idade,turma,nota) values ("joão", 17, 30, 9);
insert into tb_colegio (nome,idade,turma,nota) values ("gabriel", 11, 10, 5);
insert into tb_colegio (nome,idade,turma,nota) values ("monalisa", 10, 10, 10);
insert into tb_colegio (nome,idade,turma,nota) values ("roberto", 8, 8, 8.8);
insert into tb_colegio (nome,idade,turma,nota) values ("josé", 8, 8, 2);
insert into tb_colegio (nome,idade,turma,nota) values ("gabriel", 15, 20, 10);
insert into tb_colegio (nome,idade,turma,nota) values ("osvaldo", 15, 20, 1);

select * from tb_colegio where nota>7;
select * from tb_colegio where nota<7;

update tb_colegio set nota=8 where id=8;









