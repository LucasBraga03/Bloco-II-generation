create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(

id bigint auto_increment,
estilo varchar(10),
genero varchar (10),
primary key (id)

);



insert into tb_classe (estilo,genero) values ("masculino", "ataque");
insert into tb_classe (estilo,genero) values ("masculino", "defesa");
insert into tb_classe (estilo,genero) values ("feminino", "defesa");
insert into tb_classe (estilo,genero) values ("feminino", "ataque");
select *from tb_classe;



create table tb_personagem (
id bigint auto_increment,
nome varchar(50),
dano bigint,
poder varchar (50),
velocidade bigint,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)

);

insert into tb_personagem (nome, dano, poder, velocidade, classe_id) values ("reyna", 90, "voa", 80, 4);
insert into tb_personagem (nome, dano, poder, velocidade, classe_id) values ("sova", 80, "super-velocidade",100, 1);
insert into tb_personagem (nome, dano, poder, velocidade, classe_id) values ("raze", 80, "super-pulo",85, 4);
insert into tb_personagem (nome, dano, poder, velocidade, classe_id) values ("phoenix", 90, "solta fogo", 80, 1);
insert into tb_personagem (nome, dano, poder, velocidade, classe_id) values ("sage", 70, "faz parede de gelo", 80, 3);
insert into tb_personagem (nome, dano, poder, velocidade, classe_id) values ("chambler", 60, "invisível", 80, 2);
insert into tb_personagem (nome, dano, poder, velocidade, classe_id) values ("aranha", 100, "solta teia", 80, 1);
insert into tb_personagem (nome, dano, poder, velocidade, classe_id) values ("hulh", 90, "super força", 60, 2);

select *from tb_personagem;

select*from tb_personagem where dano>80;
select*from tb_personagem where velocidade<80;

select*from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_classe.estilo, tb_classe.genero from tb_personagem inner join tb_classe on tb_personagem.classe_id =tb_classe.id;

select tb_personagem.nome, tb_classe.estilo, tb_classe.genero from tb_personagem left join tb_classe on tb_personagem.classe_id =tb_classe.id;

