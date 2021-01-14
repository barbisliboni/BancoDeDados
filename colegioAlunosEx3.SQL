
create database db_colegio;
use db_colegio;

create table tb_alunos(
	id bigint(5) auto_increment,
	nome_aluno varchar(100) not null,
	ra_aluno bigint(5) not null,
	nota_aluno int(2) not null,
	comportamento_aluno varchar(30) not null,
	rg_aluno bigint(10) not null,
	primary key(id)	
)

insert into tb_alunos (nome_aluno,ra_aluno,nota_aluno,comportamento_aluno,rg_aluno) 
values ("Miguel", 26589, 4, "Bagunceiro",1256489753);
insert into tb_alunos (nome_aluno,ra_aluno,nota_aluno,comportamento_aluno,rg_aluno) 
values ("Matheus", 25889, 8, "Estudioso",1254889753);
insert into tb_alunos (nome_aluno,ra_aluno,nota_aluno,comportamento_aluno,rg_aluno) 
values ("Marina", 22559, 8.5, "Estudiosa",1256483753);
insert into tb_alunos (nome_aluno,ra_aluno,nota_aluno,comportamento_aluno,rg_aluno) 
values ("Ana", 26531, 6, "Bagunceira e esforçada",1256789753);
insert into tb_alunos (nome_aluno,ra_aluno,nota_aluno,comportamento_aluno,rg_aluno) 
values ("Giovanna", 26809, 10, "Estudiosa",1256039753);
insert into tb_alunos (nome_aluno,ra_aluno,nota_aluno,comportamento_aluno,rg_aluno) 
values ("Kathlem", 29679, 5, "Quieta",1256438753);
insert into tb_alunos (nome_aluno,ra_aluno,nota_aluno,comportamento_aluno,rg_aluno) 
values ("Gabriel", 26689, 9, "Estudioso",1256586753);
insert into tb_alunos (nome_aluno,ra_aluno,nota_aluno,comportamento_aluno,rg_aluno) 
values ("Murilo", 21589, 1.5, "Bagunceiro",1254869753);

select * from tb_alunos where nota_aluno > 7;
select * from tb_alunos where nota_aluno < 7;

update tb_alunos set nota_aluno = 2 where id = 8;