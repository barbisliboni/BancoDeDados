create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categorias(
    id bigint(5) auto_increment,
    tipo_remedio varchar (15) not null,
    manipulado boolean not null,
    disponivel boolean not null,
    primary key(id)
)

create table tb_produto(
    id bigint(5) auto_increment,
    nome_remedio varchar(30) not null,
    marca varchar(30) not null,
    preco decimal(10,2) not null,
    formato_medicamento varchar(30) not null,
    peso_caixa_gramas int (3) not null,
    categorias_id bigint not null,
    primary key(id),
    foreign key (categorias_id) references tb_categorias(id)
)

insert into tb_categorias (tipo_remedio,manipulado,disponivel) values("Cosméticos",TRUE,TRUE);bb
insert into tb_categorias (tipo_remedio,manipulado,disponivel) values("Referência",FALSE,TRUE);bB
insert into tb_categorias (tipo_remedio,manipulado,disponivel) values("Similares",TRUE,TRUE);b
insert into tb_categorias (tipo_remedio,manipulado,disponivel) values("Genéricos",TRUE,TRUE);bb
insert into tb_categorias (tipo_remedio,manipulado,disponivel) values("Outros",FALSE,TRUE);b

insert into tb_produto (nome_remedio,marca,preco,formato_medicamento,peso_caixa_gramas, categorias_id)
values ("Dipirona","Cotton",12,"Comprimido",8,4);
insert into tb_produto (nome_remedio,marca,preco,formato_medicamento,peso_caixa_gramas, categorias_id)
values ("Protetor Solar","La Roche-Posay",80,"Toque seco",200,1);
insert into tb_produto (nome_remedio,marca,preco,formato_medicamento,peso_caixa_gramas, categorias_id)
values ("Aspirina","Aspirina",8,"Comprimido",10,2);
insert into tb_produto (nome_remedio,marca,preco,formato_medicamento,peso_caixa_gramas, categorias_id)
values ("Nervocalm","WP LAB",129,"Pílula",30,4);
insert into tb_produto (nome_remedio,marca,preco,formato_medicamento,peso_caixa_gramas, categorias_id)
values ("Rotretin","Neo Química",65,"Pílula",100,3);
insert into tb_produto (nome_remedio,marca,preco,formato_medicamento,peso_caixa_gramas, categorias_id)
values ("Ponstan","Lab 45",22,"Comprimido",6,5);
insert into tb_produto (nome_remedio,marca,preco,formato_medicamento,peso_caixa_gramas, categorias_id)
values ("Dercos Shampoo","Vichy",118,"Líquido",200,1);
insert into tb_produto (nome_remedio,marca,preco,formato_medicamento,peso_caixa_gramas, categorias_id)
values ("Tylenol","Tylenol",26,"Comprimido",25,2);

select * from tb_produto where preco > 50;

select * from tb_produto where preco >= 3 and preco <= 60;

select * from tb_produto where nome_remedio like "%B%";

select * from tb_produto 
inner join tb_categorias on tb_categorias.id = tb_produto.categorias_id;

select * from tb_produto 
inner join tb_categorias on tb_categorias.id = tb_produto.categorias_id
where tb_categorias.tipo_remedio like "%Referência%";

