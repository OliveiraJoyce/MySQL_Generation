-- Criando Banco de dados
create database db_cidade_das_frutas;

-- Acessando o banco de dados
use db_cidade_das_frutas;

-- Criado Tabela 
create table tb_categoria(
id bigint auto_increment,
classificacao varchar(255),
definicao varchar(255), 
primary key (id)
); 

-- Inserir dados na tabela 
insert into tb_categoria(classificacao, definicao)  values ("fruta", "Frutos doces e comestíveis");
insert into tb_categoria(classificacao, definicao)  values ("Verduras", "Plantas comestíveis, em geral");
insert into tb_categoria(classificacao, definicao)  values ("Legumes", "Frutos salgados e comestíveis, classificados como leguminosas");

-- Dados tabela catgoria
select * from tb_categoria;

-- Criado Tabela
create table tb_produto(
id bigint auto_increment,
nome varchar (255),
kg decimal(5,2),
preco decimal (5,2),
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
); 

-- Inserir dados na tabela 
insert into tb_produto (nome, kg, preco, categoria_id) values ("Tomate", 1, 7.99, 1);
insert into tb_produto (nome, kg, preco, categoria_id) values ("Abacaxi", 3, 20.99, 1);
insert into tb_produto (nome, kg, preco, categoria_id) values ("Batata", 5, 10.99, 2);
insert into tb_produto (nome, kg, preco, categoria_id) values ("Beterraba", 1, 5.99, 3);
insert into tb_produto (nome, kg, preco, categoria_id) values ("Chuchu", 1, 4.99, 3);
insert into tb_produto (nome, kg, preco, categoria_id) values ("Morango", 500, 13.99, 1);
insert into tb_produto (nome, kg, preco, categoria_id) values ("Uva", 100, 2.99, 1);
insert into tb_produto (nome, kg, preco, categoria_id) values ("Melancia", 6, 16.89, 1);
 

-- Dados tabela produtos
select * from tb_produto;

-- Produtos maior de 50 reais
select * from tb_produto where preco > 50.00;

-- Produtos entre 3 e 60 reais
select * from tb_produto where preco between 3.00 and 60.00;

-- Localizando produuto com a letra c
select * from tb_produto where nome like "%c%";

-- Juntando as tabela categoria e produto 
select tb_produto.nome, tb_produto.preco, tb_produto.kg, tb_categoria.classificacao 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

-- Localizando todos os personagens de uma classe especifica
select tb_produto.nome, tb_categoria.classificacao 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where categoria_id = 1;
