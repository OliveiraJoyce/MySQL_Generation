-- Crianco o Banco de Dados db_rh
create database db_rh;

-- Comando para usar o banco
use  db_rh;

-- Tabela de atributos dos funcionarios
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
cargo varchar(255),
salario decimal(10,2),
contatoEmail varchar(255),
contratoAtivo boolean,
primary key(id)
);

-- Inserindo dados na tabela
insert into tb_funcionarios (nome, cargo, salario, contatoEmail, contratoAtivo) values ("Joyce", "Desenvolvedora", 8000, "joycezer5@gmail.com", true);
insert into tb_funcionarios (nome, cargo, salario, contatoEmail, contratoAtivo) values ("Maria", "Enfermeira", 6000, "maria@gmail.com", true);
insert into tb_funcionarios (nome, cargo, salario, contatoEmail, contratoAtivo) values ("Joana", "Médica", 14000, "joana5@gmail.com", false);
insert into tb_funcionarios (nome, cargo, salario, contatoEmail, contratoAtivo) values ("Maicon", "Recepcionista", 2000, "maicon@gmail.com", true);
insert into tb_funcionarios (nome, cargo, salario, contatoEmail, contratoAtivo) values ("Mariano", "Segurança", 1600, "mariano@gmail.com", true);

-- Selecionando dados da tabela 
select * from tb_funcionarios;

-- Selecionando salario maior que 2000
select * from tb_funcionarios where salario > 2000; 

-- Selecionando salario mennor que 2000
select * from tb_funcionarios where salario < 2000; 

-- Atualizando os dados
update tb_funcionarios set contratoAtivo = true where id = 3; 
