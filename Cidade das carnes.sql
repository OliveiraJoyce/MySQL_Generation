create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Bovino",true);
insert into tb_categoria (descricao, ativo) values ("Suino",true);
insert into tb_categoria (descricao, ativo) values ("Aves",true);
insert into tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert into tb_categoria (descricao, ativo) values ("imbutidos",true);
insert into tb_categoria (descricao, ativo) values ("soja",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("ASA",40.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Picanha",20.00,30, "2021-11-08", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("coxa de frango",20.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Bacon",30.00,30, "2021-11-09", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("hamburguer",60.00,30, "2021-09-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cupim",20.00,30, "2021-11-10", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Peito de frango",25.00,30, "2021-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orelha de porco",20.00,30, "2021-11-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Salame",18.00,30, "2021-11-21", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("medalhao",50.00,30, "2021-11-15", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("mocoto",20.00,30, "2021-10-05", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("chuleta",20.00,30, "2021-10-07", 1);
insert into tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert into tb_produtos (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

select * from tb_produtos;

select nome, preco, categoria_id from tb_produtos; -- From de quem

-- Localizando dentro do atributo nome 
select * from tb_produtos where nome like "ha%";  

select * from tb_produtos where nome like "%ha";

select * from tb_produtos where nome like "%ha%";

-- Localizando dentro do atributo preco 
select * from tb_produtos where  preco in (20.00,30.00,40.00);

-- Localizando dentro do atributo entre 20 e 40 - order by mostrar ordem crescente
select * from tb_produtos where  preco between 20.00 and 40.00 order by preco;

-- Localizando dentro do atributo entre 20 e 40 - order by mostrar ordem decrescente 
select * from tb_produtos where  preco between 20.00 and 40.00 order by preco desc;

-- Localizando dentro do atributo validade  
select * from tb_produtos where  dtvalidade  between '2021-11-07' and '2021-11-15' order by dtvalidade, nome;

-- Cont Contar - apenas o valor do atributo preenchido
select count(*) from tb_produtos; 

-- Contar 
select count(categoria_id) from tb_produtos;

-- Sum Soma
select sum(preco) from tb_produtos;

-- avg Media
select avg(preco) from tb_produtos;

-- Incluir o nome média  na tabela, dando um apelido 
select avg(preco) as Média from tb_produtos;

-- Calculando media - group by agrupa a média de preços por categoria 
select categoria_id, avg(preco) as Média from tb_produtos group by categoria_id;

-- Preço maximo 
select max(preco) as Preço_Máximo from tb_produtos;

-- Preço minimo
select min(preco) as Preço_Mínimo from tb_produtos;

-- Consulta composta mostrando o preço maximo e o nome do produto
select * from tb_produtos where preco = (select max(preco) as Preço_Máximo from tb_produtos);

-- INNER JOIN - mostra só o que tem relacionamento 
select tb_produtos.nome, tb_produtos.preco,tb_categoria.descricao 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- Left Join - traz todos que tem relação e que não tem relação
select tb_produtos.nome, tb_produtos.preco,tb_categoria.descricao 
from tb_produtos left join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
 
 -- Right join  mostra tudo que esta na lado esquerdo que tem e não tem relação
 select tb_produtos.nome, tb_produtos.preco,tb_categoria.descricao 
from tb_produtos right join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;