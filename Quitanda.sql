-- Criando Banco de dados
create database db_quitanda;

-- Acessando o banco de dados
use db_quitanda;

-- Criado Tabela 
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null, -- not null não vai aceitar dados em branco
preco decimal not null,
primary key (id)
); 

-- Inserir dados na tabela 
insert into tb_produtos(nome, preco)  values ("tomate", 8.00);
insert into tb_produtos(nome, preco)  values ("maçã", 5.00);
insert into tb_produtos(nome, preco)  values ("laranja", 10.00);
insert into tb_produtos(nome, preco)  values ("banana", 12.00);
insert into tb_produtos(nome, preco)  values ("uva", 30.00);
insert into tb_produtos(nome, preco)  values ("pêra", 3.00);

-- Visualiza todos os dados
select * from tb_produtos;

-- Visualiza somente o nome e o preço
select nome, CONCAT('R$ ', FORMAT(preco, 3, 'de_DE')) as preço from tb_produtos;

-- Visualiza o produto cujo id é igual a 1
select * from tb_produtos where id = 1;

-- Visualiza todos os produtos cujo preço seja maior do que 5
select * from tb_produtos where preco > 5.00;

-- Visualiza todos os produtos cujo nome seja maçã
select * from tb_produtos where nome = "maçã";

/* Alterações na Estrutura da Tabela*/

-- Adiciona um novo Atributo na Tabela
alter table tb_produtos add descricao varchar(255); 

-- Atualiza o tipo de um Atributo da Tabela 
-- decimal (6 digitos, sendo os ultimos 2 as casas decimais - 4200.00)
alter table tb_produtos modify preco decimal(6,2);

-- Remove um atributo da Tabela
alter table tb_produtos drop descricao; 

/* Alterações nos Dados da Tabela*/

-- Atualiza o atributo preço na tabela, cujo id seja igual a 1
update tb_produtos set preco = 10.00 where id = 1;

-- Deleta o registro da tabela, cujo id seja igual a 2
delete from tb_produtos where id = 2;


/* Bônus */

-- Esqueceu de definir a chave primária da tabela
ALTER TABLE tb_produtos ADD PRIMARY KEY (id);

-- Modifica o nome de um Atributo da Tabela
alter table tb_produtos change nome nomeproduto integer;

-- Apaga todos os dados da tabela (Não é possível desfazer)
delete from tb_produtos;