create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
	id bigint auto_increment primary key,
    nome varchar(255),
    codigo bigint
);
create table tb_produtos(
	id bigint auto_increment primary key,
    nome varchar(255),
    preco decimal(6,2),
    validade date,
    categoria_id bigint,
    foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_categorias(nome, codigo)
		values("Cosmeticos", 05),
				("Perfumes", 08),
				("Remedios",03);
insert into tb_categorias(nome, codigo)
		values("Higiene", 17);                
insert into tb_produtos(nome, preco, validade, categoria_id)
                    values    ("Amoxicilina", 3.99, '2023-05-08', 3),
                              ("Graviola", 5.99, '2023-05-08', 3),
                              ("Loratadina", 5.99, '2023-05-08', 3),
                              ("Paracetamol", 2.99, '2023-05-08', 3),
                              ("Red Bull", 5.99, '2023-05-08', 3),
                              ("Tylenol", 8.99, '2023-05-08', 3),
                              ("Vitamina C", 6.99, '2023-05-08', 3),
                              ("Vitamina A", 3.99, '2023-05-08', 3),
                              ("Kit Especial", 79.99, '2025-12-30',1);

                              


        