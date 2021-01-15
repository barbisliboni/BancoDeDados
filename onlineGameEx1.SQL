create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
    id bigint(5) auto_increment,
    tipo_personagem varchar (20) not null,
    poder_especial boolean not null,
    pets boolean not null,
    primary key(id)
)

create table tb_personagem(
    id bigint(5) auto_increment,
    nome_personagem varchar (25) not null,
    ataque bigint(4) not null,
    defesa bigint(4) not null,
    skin boolean not null,
    nivel_personagem int (5) not null,
    classe_id bigint not null,
    primary key(id),
    foreign key (classe_id) references tb_classe(id)
)

insert into tb_classe (tipo_personagem,poder_especial,pets) values("Assassino", TRUE, FALSE);B
insert into tb_classe (tipo_personagem,poder_especial,pets) values("Tanque", TRUE, FALSE);BB
insert into tb_classe (tipo_personagem,poder_especial,pets) values("Mago", TRUE, FALSE);BB
insert into tb_classe (tipo_personagem,poder_especial,pets) values("Lutador", TRUE, FALSE);BB
insert into tb_classe (tipo_personagem,poder_especial,pets) values("Atirador", TRUE, FALSE);B

insert into tb_personagem (nome_personagem,ataque,defesa,skin,nivel_personagem,classe_id) 
values ("Akali",3000,4500,TRUE,13,1);
insert into tb_personagem (nome_personagem,ataque,defesa,skin,nivel_personagem,classe_id) 
values ("Blitzcrank",5000,3500,TRUE,21,2);
insert into tb_personagem (nome_personagem,ataque,defesa,skin,nivel_personagem,classe_id) 
values ("Caitlyn",3500,3000,TRUE,12,5);
insert into tb_personagem (nome_personagem,ataque,defesa,skin,nivel_personagem,classe_id) 
values ("Dr. Mundo",5000,4500,TRUE,25,4);
insert into tb_personagem (nome_personagem,ataque,defesa,skin,nivel_personagem,classe_id) 
values ("Elise",6000,3000,TRUE,10,3);
insert into tb_personagem (nome_personagem,ataque,defesa,skin,nivel_personagem,classe_id) 
values ("Fiora",6000,2500,TRUE,16,4);
insert into tb_personagem (nome_personagem,ataque,defesa,skin,nivel_personagem,classe_id) 
values ("Galio",6500,1500,TRUE,22,2);
insert into tb_personagem (nome_personagem,ataque,defesa,skin,nivel_personagem,classe_id) 
values ("Heimerdinger",2500,4000,TRUE,19,3);

select * from  tb_personagem where ataque > 2000;

select * from  tb_personagem where defesa >= 1000 and defesa <= 2000;

select * from tb_personagem where nome_personagem like "%C%";

select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where tb_classe.tipo_personagem like "%Tanque%";

