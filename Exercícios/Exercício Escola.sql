-- Crianco o Banco de Dados db_escola
create database db_escola;

-- Comando para usar o banco 
use db_escola;

-- Tabela de atributos dos Estudantes 
create table  tb_registro(
id bigint auto_increment,
nome varchar(255),
idade int,
turma varchar(255),
turno varchar(255),
nota decimal(10,2),
primary key(id)
);

-- Inserindo dados na tabela
insert into tb_registro (nome, idade, turma, turno, nota) values ("Luiz", 10, "3A", "manhã", 9.07); 
insert into tb_registro (nome, idade, turma, turno, nota) values ("Luiza", 12, "3A", "manhã", 5.05); 
insert into tb_registro (nome, idade, turma, turno, nota) values ("Maria", 08, "1B", "tarde", 10.0); 
insert into tb_registro (nome, idade, turma, turno, nota) values ("Maycon", 08, "1B", "tarde", 7.87); 
insert into tb_registro (nome, idade, turma, turno, nota) values ("Mayra", 10, "2C", "manhã", 3.00); 
insert into tb_registro (nome, idade, turma, turno, nota) values ("João", 13, "3B", "manhã", 2.05); 
insert into tb_registro (nome, idade, turma, turno, nota) values ("Gabrielly", 17, "5F", "noturno", 7.9); 
insert into tb_registro (nome, idade, turma, turno, nota) values ("Manuela", 16, "5F", "noturno", 10.0); 

-- Selecionando dados da tabela
select * from tb_registro;
select * from tb_registro where nota < 7;
select * from tb_registro where nota > 7;

-- Alterando dados
update tb_registro set nota = 3.05 where id = 3;