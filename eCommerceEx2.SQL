create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
	id bigint(5) auto_increment,
	tipo_produto varchar(50) not null,
	nome_produto varchar(80) not null,
	marca_produto varchar(20) not null,
	unid_medida_produto char(2) not null,
	valor_produto float not null,
	primary key(id)
)

insert into tb_produtos (tipo_produto, nome_produto,marca_produto,unid_medida_produto,valor_produto) 
values ("Celulares","Samsung Galaxy", "Samsung", "KG", 1680);

insert into tb_produtos (tipo_produto, nome_produto,marca_produto,unid_medida_produto,valor_produto) 
values ("Celulares","Motorola One Action", "Motorola", "KG", 1800);
insert into tb_produtos (tipo_produto, nome_produto,marca_produto,unid_medida_produto,valor_produto) 
values ("TVs","Smart TV LG", "LG", "KG", 3500);
insert into tb_produtos (tipo_produto, nome_produto,marca_produto,unid_medida_produto,valor_produto) 
values ("TVs","TV Led Philco", "Philco", "KG", 1320);
insert into tb_produtos (tipo_produto, nome_produto,marca_produto,unid_medida_produto,valor_produto) 
values ("Notebook","Notebook Positivo Motion", "Positivo", "KG", 1350);
insert into tb_produtos (tipo_produto, nome_produto,marca_produto,unid_medida_produto,valor_produto) 
values ("Notebook","Notebook Samsung Book", "Samsung", "KG", 3000);
insert into tb_produtos (tipo_produto, nome_produto,marca_produto,unid_medida_produto,valor_produto) 
values ("Ar condicionado", "Ar Condicionado Britânia", "Britânia", "KG", 1500);
insert into tb_produtos (tipo_produto, nome_produto,marca_produto,unid_medida_produto,valor_produto) 
values ("Ar condicionado","Ar Condicionado Split LG", "LG", "KG", 1700);

select*from tb_produtos where valor_produto > 500;
select*from tb_produtos where valor_produto < 500;

update tb_produtos set valor_produto = 250 where id = 1;