-- criando banco de dados
create database lojavirtual;
-- entrando no banco de dados
use lojavirtual;
-- criando tabela de produtos
create table tb_produtos(

id_produto bigint auto_increment primary key,
nome varchar(255),
preco decimal(9,2),
quantidade int(9),
categoria varchar(255),
descricao varchar(1200)

);
-- inserindo valores/produtos na tabela
insert into tb_produtos(nome, preco, quantidade, categoria, descricao)
values ("Capitães de Areia"	, 40.00, 100, "Livros", "Capitães de Areia é um romance do escritor brasileiro Jorge Amado, publicado em 1937.");
insert into tb_produtos(nome, preco, quantidade, categoria, descricao)
				values("Carregando"			, 30.00, 100, "Livros", "Carregando é um romance do escritor brasileiro Zuenir Ventura, publicado em 2003.");
insert into tb_produtos(nome, preco, quantidade, categoria, descricao)
				values("Cem Anos de Soledade"	, 35.00, 100, "Livros", "Cem Anos de Soledade é um romance do escritor colombiano Gabriel García Márquez, publicado em 1967.");
insert into tb_produtos(nome, preco, quantidade, categoria, descricao)
				values("Cidades Desoladas"	, 65.00, 100, "Livros", "Cidades Desoladas é um romance do escritor brasileiro Margaret Mazzantini, publicado em 2003.");
insert into tb_produtos(nome, preco, quantidade, categoria, descricao)
				values("Cinquenta Sombras"	, 45.00, 100, "Livros", "Cinquenta Sombras é um romance do escritor E. L. James, publicado em 2011.");
insert into tb_produtos(nome, preco, quantidade, categoria, descricao)
				values("Ciranda de Pedra"		, 50.00, 100, "Livros", "Ciranda de Pedra é um romance do escritor brasileiro Lygia Fagundes Telles, publicado em 2006.");
insert into tb_produtos(nome, preco, quantidade, categoria, descricao)
				values("Ciranda de Pedra"		, 50.00, 100, "Livros", "Ciranda de Pedra é um romance do escritor brasileiro Lygia Fagundes Telles, publicado em 2006.");
insert into tb_produtos(nome, preco, quantidade, categoria, descricao)
				values("Conversazioni in Sicilia"	, 55.00, 100, "Livros", "Conversazioni in Sicilia é um romance do escritor italiano Elio Vittorini, publicado em 1941.");
insert into tb_produtos(nome, preco, quantidade, categoria, descricao)
				values("Corações Sujos"		, 72.00, 29, "Livros", "Corações Sujos é um romance do escritor moçambicano Mia Couto, publicado em 2005.");

-- selecionando todos produtos da tabela                
select * from tb_produtos;
-- selecionando produtos com preço maior que 500
select * from tb_produtos where preco > 500;
-- selecionando produtos com preço menor que 500
select * from tb_produtos where preco < 500;
-- atualizando tabela
UPDATE tb_produtos SET nome = 'Mar Morto', descricao = 'Mar morto conta as histórias da beira do cais da Bahia' WHERE id_produto = 2;