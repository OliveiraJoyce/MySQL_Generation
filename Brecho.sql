-- Cria o Banco de Ddos db_brecho 
create database db_brecho;
-- Informando qual banco deve se usado para criar
use db_brecho; -- Use comando para usar o banco 

-- Criando a tabela de produtos 
create table tb_produtos(
id bigint auto_increment,  
nome varchar(255),
quantidade int,
preco  decimal,
primary key(id) 
);

-- Inserindo dados na tabela
insert into tb_produtos(nome, quantidade, preco) values ("Camiseta", 30, 18.90);

insert into tb_produtos(nome, quantidade, preco) values ("Calça", 10, 29.90);

insert into tb_produtos(nome, quantidade, preco) values ("Body", 15, 15.10);

insert into tb_produtos(nome, quantidade, preco) values ("Casaco", 20, 25.90);

insert into tb_produtos(nome, quantidade, preco) values ("Meia", 50, 5.99);

-- Atualizando os dados da linha 1 - tabela produtos 
update tb_produtos set preco = 18.90 where id = 1;

-- Delete dados inseridos - or  significa ou
delete from tb_produtos where id = 2 or id = 3; 

-- Selecionando dados da tabela 
select * from tb_produtos;

-- Alterando a forma de exibir na tela o campo do preço, inserindo as casas depois da virgula
alter table tb_produtos modify preco  decimal(8,2);

-- Alterando o nome do atrituto da tabela produto 
alter table tb_produtos change nome nomeproduto varchar(255);

-- Inserindo um novo atributo da tabela 
insert into tb_produtos(nomeproduto, quantidade, preco) values ("Sapato", 50, 85.00);

-- Inserindo um novo atributo na tabela 
alter table tb_produtos add descricao varchar(255);

-- Para apagar um atributo da tabela - drop 
alter table tb_produtos drop descricao; 

-- Saber de o preço é maior que 15
select * from tb_produtos where preco > 15; 

-- Saber se o nome é igual a calça 
select * from tb_produtos where nomeproduto = "body";

-- Saber se o id é igual a 6
select * from tb_produtos where id = 6;

-- Saber Quantidade maior que 5 preço maior que 15 - where ou and e
select * from tb_produtos where quantidade > 5 and preco > 15; 

