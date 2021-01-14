create database db_servico_de_rh;
use db_servico_de_rh;

create table tb_funcionarios(
    id bigint(5) auto_increment,
    nome varchar (100),
    funcao varchar (120),
    cpf bigint(11),
    descricao_cargo varchar(255),
    cidade varchar(15),
    primary key (id)
)

insert into tb_funcionarios (nome,funcao,cpf,descricao_cargo,cidade,salario) Values ("Bárbara", "Desenvolvedora Junior", 1234, "Desenvolver aplicações web", "Guarulhos",2500);
insert into tb_funcionarios (nome,funcao,cpf,descricao_cargo,cidade,salario) Values ("Thiago", "Desenvolvedor Junior", 12345678911, "Ajustar APIs","Santo André",2000);
insert into tb_funcionarios (nome,funcao,cpf,descricao_cargo,cidade,salario) Values ("Glauber", "Desenvolvedor Pleno", 24589632578, "Treinamentos para trainees e atualizar Rest API", "Guarulhos",7000);
insert into tb_funcionarios (nome,funcao,cpf,descricao_cargo,cidade,salario) Values ("Giovanni", "Trainee", 24589635478, "Entregar as atividades propostas", "Santo André",1000);
insert into tb_funcionarios (nome,funcao,cpf,descricao_cargo,cidade,salario) Values ("Arthur", "Desenvolvedor Sênior", 24553732578, "Programar reuniões com diretorias e coordenadores", "Sorocaba",15000);

select*from tb_funcionarios where salario < 2000;
select*from tb_funcionarios where salario > 2000;

update tb_funcionarios set cidade = "Santo André" where id = 1;


