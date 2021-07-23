-- Criado Tabela produto  
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

-- Criado Tabela produto  
create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

-- Inserir dados na tabela
insert into tb_categoria (descricao, ativo) values ("Javascript", true);
insert into tb_categoria (descricao, ativo) values ("Java", true);
insert into tb_categoria (descricao, ativo) values ("Python", true);
insert into tb_categoria (descricao, ativo) values ("Ruby", true);
insert into tb_categoria (descricao, ativo) values ("C", true);

-- Dados tabela produtos
create table tb_curso (
id bigint auto_increment,
curso varchar (255) not null,
preco decimal(6,2) not null,
qthoras int not null,
dtcompra date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Inserir dados na tabela
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Javascript Ninja", 35.00, 44, '2019-08-01', 1);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Java com SpringBoot", 29.00, 98, '2021-09-06', 2);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Curso de Python 3 do Básico Ao Avançado", 189.00, 110, '2021-07-21', 3);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Ruby on Rails 5.x - Do início ao fim", 249.90, 48, '2021-07-21', 4);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Programação em C do básico ao avançado", 249.90, 24, '2018-05-25', 5);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Criando microsserviços em Java com AWS ECS e Fargate", 69.90, 10, '2020-09-25', 2);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("JavaScript: Completo de A a Z + Projetos Profissionais", 189.90, 17, '2021-01-16', 1);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Reconhecimento de Textos com OCR e Python", 39.90, 13, '2016-12-23', 3);

-- Produtos maior de 50 reais
select * from tb_curso where preco > 50;

-- Produtos entre 3 e 60 reais
select * from tb_curso where preco between 3 and 60;

-- Localizando produuto com a letra j
select * from tb_curso where curso like "%J%";

-- Juntando as tabela categoria e produto
select tb_curso.curso, tb_curso.preco, tb_categoria.descricao 
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

-- Localizando todos os personagens de uma classe especifica
select tb_curso.curso, tb_curso.preco, tb_categoria.descricao 
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id and tb_categoria.descricao = "Java";