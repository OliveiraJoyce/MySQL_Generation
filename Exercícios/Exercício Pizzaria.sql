-- Criando banco de dados
create database db_pizzaria_legal;

-- Informando qual banco deve se usado para criar
use db_pizzaria_legal;

-- Criando a tabela de categoria
create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
tamanho varchar(255) not null,
primary key(id)
);

-- Inserindo dados na tabela categoria
insert into tb_categoria (descricao, tamanho) values ("Pizza", "Grande");
insert into tb_categoria (descricao, tamanho) values ("Esfiha", "Média");
insert into tb_categoria (descricao, tamanho) values ("Fogazza", "Média");
insert into tb_categoria (descricao, tamanho) values ("Beirute", "Média");
insert into tb_categoria (descricao, tamanho) values ("Refrigerante ", "2 litros");

select * from tb_categoria;

-- Criando a tabela de pizza

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255),
borda boolean,
preco decimal (5,2),
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

-- Inserindo dados na tabela personagem
insert into tb_pizza (sabor, borda, preco, categoria_id) values ("Calabresa", true, 29.00, 1);
insert into tb_pizza (sabor, borda, preco, categoria_id) values ("Mussarela", false, 5.99, 2);
insert into tb_pizza (sabor, borda, preco, categoria_id) values ("Chocolate", false, 49.90, 1);
insert into tb_pizza (sabor, borda, preco, categoria_id) values ("Calacatu", true, 59.00, 1);
insert into tb_pizza (sabor, borda, preco, categoria_id) values ("Frango", false, 9.80, 3);
insert into tb_pizza (sabor, borda, preco, categoria_id) values ("Calabresa", false, 9.80, 3);
insert into tb_pizza (sabor, borda, preco, categoria_id) values ("Refrigarante", false, 29.00, 5);
insert into tb_pizza (sabor, borda, preco, categoria_id) values ("Ovo", false, 29.00, 4);

-- Dados tabela pizza 
select * from tb_pizza; 

-- Produtos valor maior de 45 reais 
select * from tb_pizza where preco > 45.00;

-- Produtos valor entre 29 e 60 reais 
select * from tb_pizza where preco  between 29.00  and 60.00;

-- Localizando produuto com a letra c
select * from tb_pizza where sabor like "%c%";

-- Localizando todos os personagens de uma classe especifica
select tb_pizza.sabor, tb_pizza.preco, tb_categoria.pizza 
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where categoria_id = 1;



