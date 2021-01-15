create database db_pizzaria_legal;
use db_pizzaria_legal

create table tb_categoria(
    id bigint(5) auto_increment,
    tipo varchar(15) not null,
    alergenicos boolean not null,
    acompanha_refri boolean not null,
    primary key(id)
)

create table tb_pizza(
    id bigint(5) auto_increment,
    sabor varchar (30) not null,
    preco decimal(10,2) not null,
    tamanho varchar (15) not null,
    massa_integral boolean not null,
    sabor_borda varchar(10) not null,
    categoria_id bigint not null, 
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria (tipo,alergenicos,acompanha_refri) values("Vegetariana",TRUE,TRUE);
insert into tb_categoria (tipo,alergenicos,acompanha_refri) values("Doce",TRUE,FALSE);
insert into tb_categoria (tipo,alergenicos,acompanha_refri) values("Italiana",TRUE,FALSE);
insert into tb_categoria (tipo,alergenicos,acompanha_refri) values("Portuguesa",TRUE,TRUE);
insert into tb_categoria (tipo,alergenicos,acompanha_refri) values("Havaiana",TRUE,FALSE);

insert into tb_pizza (sabor,preco,tamanho,massa_integral,sabor_borda,categoria_id) 
values ("Napolitana",33,"Média",FALSE,"Cheedar",3);
insert into tb_pizza (sabor,preco,tamanho,massa_integral,sabor_borda,categoria_id) 
values ("Portuguesa",36,"Grande",FALSE,"Catupiry",4);
insert into tb_pizza (sabor,preco,tamanho,massa_integral,sabor_borda,categoria_id) 
values ("Vegetariana",36,"Grande",TRUE,"Cheedar",1);
insert into tb_pizza (sabor,preco,tamanho,massa_integral,sabor_borda,categoria_id) 
values ("Siciliana",31,"Broto",FALSE,"Catupiry",5);
insert into tb_pizza (sabor,preco,tamanho,massa_integral,sabor_borda,categoria_id) 
values ("Chocolate ao Leite",41,"Média",FALSE,"Chocolate",2);
insert into tb_pizza (sabor,preco,tamanho,massa_integral,sabor_borda,categoria_id) 
values ("Tomate Seco com Rúculas",49,"Grande",TRUE,"CreamCh",3);
insert into tb_pizza (sabor,preco,tamanho,massa_integral,sabor_borda,categoria_id) 
values ("Marido Gelado",49,"Média",TRUE,"Chocolate",2);
insert into tb_pizza (sabor,preco,tamanho,massa_integral,sabor_borda,categoria_id) 
values ("Catarina",36,"Média",FALSE,"Catupiry",1);

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco >= 29 and preco <=60;

select * from tb_pizza where sabor like "%C%";

select * from tb_pizza 
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza 
inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where tb_categoria.tipo like "%Doce%";



