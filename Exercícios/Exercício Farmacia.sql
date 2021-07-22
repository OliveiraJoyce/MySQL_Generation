-- Criando Banco de Dados 
create database db_famarmacia_do_bem;

-- Informando qual banco deve se usado para criar
use db_famarmacia_do_bem;

-- Criando a tabela de categoria
create table tb_categoria(
id bigint auto_increment,
departamento varchar(255),
categoria varchar (255),
fabricante varchar (255),
primary key(id)
); 

-- Inserindo dados na tabela categoria
insert into tb_categoria (departamento, categoria, fabricante) values ("Beleza", "Maquiagem ", "Vult");
insert into tb_categoria (departamento, categoria, fabricante) values ("Medicamento", "Antigripais ", "Phaty");
insert into tb_categoria (departamento, categoria, fabricante) values ("Higiene", "Absorventes ", "Always");
insert into tb_categoria (departamento, categoria, fabricante) values ("Saúde", "Vitamina ", "Laranjai");
insert into tb_categoria (departamento, categoria, fabricante) values ("Dermo-Cosmetico", "Protetor Solar", "La roche");

-- Criando a tabela de produtos
create table tb_produtos(
id bigint auto_increment,
nome varchar (255),
preco decimal(8,2),
codigo_barra bigint,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

-- Inserindo dados na tabela categoria
insert into tb_produtos ( nome, preco, codigo_barra, categoria_id) values ("Bloqueador Solar", 49.99, 1234567, 5);
insert into tb_produtos ( nome, preco, codigo_barra, categoria_id) values ("Base", 69.99, 0234567, 1);
insert into tb_produtos ( nome, preco, codigo_barra, categoria_id) values ("Rimel", 39.99, 1346798, 1);
insert into tb_produtos ( nome, preco, codigo_barra, categoria_id) values ("Cinegripe", 9.99, 4596372, 2);
insert into tb_produtos ( nome, preco, codigo_barra, categoria_id) values ("Absorvente", 12.69, 0987657, 3);
insert into tb_produtos ( nome, preco, codigo_barra, categoria_id) values ("Nelsaudina", 2.99, 2234560, 2);
insert into tb_produtos ( nome, preco, codigo_barra, categoria_id) values ("Lavitan", 29.39, 4156374, 4);
insert into tb_produtos ( nome, preco, codigo_barra, categoria_id) values ("Vitamina C", 13.00, 9899976, 4);

-- Dados tabelas 
select * from tb_categoria;
select * from tb_produtos;

-- Valores maior de 50 reais 
select * from tb_produtos where preco > 50.00;

-- Valores entre  3 e 60 reais 
select * from tb_produtos where preco between 3.00 and 60.00;

-- Localizando produuto com a letra B 
select * from tb_produtos where nome like "%b%";

-- Juntando as tabela categoria e produto
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.departamento = "departamento";