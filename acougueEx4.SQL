create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
    id bigint (5) auto_increment,
    tipo_categoria int(1) not null,
    origem varchar(20) not null,
    inspecao_atualizada boolean not null,
    primary key(id)
)

create table tb_produto(
    id bigint (5) auto_increment,
    tipo_corte varchar(25) not null,
    proteina_gramas int (2) not null,
    preco_kg decimal(10,2) not null,
    peso_gramas int (4) not null,
    quantidade int(3) not null,
    categoria_id bigint not null,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
)

insert into tb_categoria (tipo_categoria,origem,inspecao_atualizada) 
values ("Primeira Categoria", "Ásia",TRUE);
insert into tb_categoria (tipo_categoria,origem,inspecao_atualizada) 
values ("Segunda Categoria", "Estados Unidos",TRUE);
insert into tb_categoria (tipo_categoria,origem,inspecao_atualizada) 
values ("Terceira Categoria", "Brasil",TRUE);
insert into tb_categoria (tipo_categoria,origem,inspecao_atualizada) 
values ("Sem categoria", "Europa",TRUE);
insert into tb_categoria (tipo_categoria,origem,inspecao_atualizada) 
values ("Outras peças", "Brasil",TRUE);

insert into tb_produto (tipo_corte,proteina_gramas,preco_kg,peso_gramas,quantidade,categoria_id) 
values ("Pescoço",10,20,500,1,3);
insert into tb_produto (tipo_corte,proteina_gramas,preco_kg,peso_gramas,quantidade,categoria_id) 
values ("Acém",21,32,500,1,2);
insert into tb_produto (tipo_corte,proteina_gramas,preco_kg,peso_gramas,quantidade,categoria_id) 
values ("Peito e peito com osso",23,30,500,1,2);
insert into tb_produto (tipo_corte,proteina_gramas,preco_kg,peso_gramas,quantidade,categoria_id) 
values ("Ponta de agulha",5,15,500,1,3);
insert into tb_produto (tipo_corte,proteina_gramas,preco_kg,peso_gramas,quantidade,categoria_id) 
values ("Filé mignon",24,68,500,1,1);
insert into tb_produto (tipo_corte,proteina_gramas,preco_kg,peso_gramas,quantidade,categoria_id) 
values ("Alcatra",20,54,500,1,1);
insert into tb_produto (tipo_corte,proteina_gramas,preco_kg,peso_gramas,quantidade,categoria_id) 
values ("Cupim",7,12,500,1,4);
insert into tb_produto (tipo_corte,proteina_gramas,preco_kg,peso_gramas,quantidade,categoria_id) 
values ("Músculo dianteiro",16,17,500,1,5);

select * from tb_produto where preco_kg > 50;

select * from tb_produto where preco_kg >= 3 and preco_kg <= 60;

select * from tb_produto where preco_kg like "%C%";

select * from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where categoria_id like "%Primeira Categoria%";

















