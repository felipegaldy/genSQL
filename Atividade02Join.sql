create database db_pizzaria_legal;

use db_pizzaria_legal;
drop table tb_pizzas;
create table tb_categorias (
	id bigint auto_increment primary key,
	doce boolean,
    salgada boolean
);

create table tb_pizzas (
	id bigint auto_increment primary key,
	sabor varchar(255),
    valor decimal(9,3),    
    ingredientes varchar(255),
    categoria_id bigint,
    foreign key (categoria_id) references tb_categorias(id)
);

ALTER TABLE tb_categorias DROP COLUMN doce;
ALTER TABLE tb_categorias DROP COLUMN salgada;
ALTER TABLE tb_categorias ADD tipo varchar(255);
ALTER TABLE tb_categorias ADD tamanho varchar(255);
alter table tb_pizzas drop column tamanho;

alter table tb_pizzas modify valor decimal(4,2);

insert into tb_categorias(tipo, tamanho) 
		values("Napolitana", "Brotinho"),
			("Frita", "8 pedaços"),
            ("Havaina", "12 pedaços"),
			("Marguerita", "8 pedaços"),
            ("Napolitana", "8 pedaços");
select * from tb_categorias;
select * from tb_pizzas;
insert into tb_pizzas(sabor, valor, ingredientes, categoria_id) 
		values("Mussarela", 36.99, "Queijo Mussarela, Orégano e Azeitonas", 5),
		("Calabresa", 36.99, "Calabresa, Orégano e Azeitonas", 4),
		("Marguerita", 36.99, "Tomate, Queijo, Orégano e Manjericão", 5),
		("Portuguesa", 36.99, "Presunto, Queijo, Orégano, Ovo e Cebola", 3),
		("Quattro Queijos", 36.99, "Queijo Mussarela, Catupiry, Provolone e Gorgonzola", 2),
		("Frango", 36.99, "Frango, Queijo, Orégano e Cebola", 2),
		("Quatro Queijos", 36.99, "Queijo Mussarela, Catupiry, Provolon e Parmesão", 5),
		("Bacon", 36.99, "Bacon, Queijo, Orégano e Cebola", 1);

update tb_pizzas set valor = 78.99 where id = 1;
update tb_pizzas set valor = 123.99 where id = 2;
update tb_pizzas set valor = 23.99 where id = 3;

-- select valor maior que 45
select * from tb_pizzas where valor > 45;

-- select valores entre 50 e 100
select * from tb_pizzas where valor >= 50 and valor <= 100 ;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
select * from tb_pizzas where sabor like '%m%';

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
select tb_pizzas.sabor,tb_pizzas.valor,tb_pizzas.ingredientes, tb_categorias.tipo from tb_pizzas inner join tb_categorias
on tb_categorias.id = tb_pizzas.categoria_id ;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
select tb_pizzas.sabor,tb_pizzas.valor,tb_pizzas.ingredientes, tb_categorias.tipo from tb_pizzas inner join tb_categorias
on tb_categorias.id = tb_pizzas.categoria_id and tb_categorias.tipo = 'Napolitana';
            