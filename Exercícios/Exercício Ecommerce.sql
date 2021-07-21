-- Crianco o Banco de Dados db_ecommerce
create database db_ecommerce; 

-- Comando para usar o banco 
use db_ecommerce;

-- Tabela de atributos dos produtos
create table tb_produtos(
id bigint auto_increment,
nomeProduto varchar(255),
Preco decimal(10,2),
categoria varchar(255),
garantia boolean,
dataFabricacao varchar(255),
primary key(id) 
);

-- Inserindo dados na tabela
insert into tb_produtos( nomeProduto, preco, categoria, garantia, dataFabricacao) values ("Xaomi", 3000, "Celular", false, "20/02/2020");
insert into tb_produtos( nomeProduto, preco, categoria, garantia, dataFabricacao) values ("Sansung", 5000, "Celular", True, "05/04/2018");
insert into tb_produtos( nomeProduto, preco, categoria, garantia, dataFabricacao) values ("Motorola", 2000, "Celular", false, "01/07/2021");
insert into tb_produtos( nomeProduto, preco, categoria, garantia, dataFabricacao) values ("Asus", 400, "Celular", false, "20/02/2020");
insert into tb_produtos( nomeProduto, preco, categoria, garantia, dataFabricacao) values ("LG", 1500.98, "Celular", true, "03/04/2019");
insert into tb_produtos( nomeProduto, preco, categoria, garantia, dataFabricacao) values ("Iphone", 10000, "Celular", false, "20/02/2017");
insert into tb_produtos( nomeProduto, preco, categoria, garantia, dataFabricacao) values ("Zenfone", 500, "Celular", false, "13/07/2020");
insert into tb_produtos( nomeProduto, preco, categoria, garantia, dataFabricacao) values ("Sony", 3000, "Celular", true, "07/05/2020");

-- Selecionando dados da tabela 
select * from tb_produtos;

select * from tb_produtos where preco >= 500;
select * from tb_produtos where preco < 500;

-- Atualizando os dados
update tb_produtos set garantia = true where id = 1 or id = 3;

