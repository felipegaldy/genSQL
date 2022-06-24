-- criando banco de dados
create database db_generation_game_online;
-- ativando banco de dados a ser usado
use db_generation_game_online;
-- criando tb classes
create	table tb_classes (
	id bigint auto_increment primary key,
    nome_classe varchar(255),
    descricao varchar(800)
);
-- criando tb personagens
create table tb_personagens (
	id bigint auto_increment primary key,
    nome_personagem varchar(255),
    poder bigint,
    classe_id bigint,
    
    foreign key (classe_id) references tb_classes(id)
);
-- adicionando atributos aos personagens
alter table tb_personagens add column vida bigint;
alter table tb_personagens add column mana bigint;

-- inserindo classes
insert into tb_classes(nome_classe, descricao) 
		values("Arqueiro", "Habilidade em usar arco e flecha"),
				("Cavaleiro", "Habilidade com armas de contato"),
				("Mago", "Habilidade com magias"),
				("Pirata", "Habilidade com espadas"),
				("Lutador", "Habilidade com socos"),
				("Mercenário", "Habilidade com machados");
-- inserindo  personagens
insert into tb_personagens(nome_personagem, poder, classe_id, vida, mana)
		values("PEKA", 7000, 2, 5000, 5000),
        	("BOUNCER", 6000, 4, 6000, 6000),
			("SPARKIE", 8000, 1, 8000, 8000),
			("MAGICIAN", 10000, 3, 1500, 2000),
			("LANCER", 2000, 5, 12000, 7000),
			("ASSASSIN", 1000, 6, 10000, 2000),
			("BOMBER", 6500, 3, 3500, 1700),
			("BRAWLER", 2500, 5, 1050, 1548),
			("WARRIOR", 3600, 2, 3245, 8000),
			("HUNTER", 8200, 6, 5800, 10000),
			("MAGE", 3500, 3, 9800, 2000),
			("SHAMAN", 4900, 1, 4800, 1509),
			("HULK", 7500, 5, 4570, 3487),
			("LICH", 6200, 3, 6500, 5000);

select * from tb_classes;
select * from tb_personagens;

-- selecionando personagens com poder maior que 2000
select * from tb_personagens where poder > 2000;
-- selecionando personagens com defesa que esteja entre 1000 e 2000
select * from  tb_personagens where vida > 1000 and vida < 2000;
-- personagens que possuam a letra C no atributo nome.
select * from tb_personagens where nome_personagem like "%C%";
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
select tb_personagens.nome_personagem, tb_classes.nome_classe from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classe_id;
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
select tb_personagens.nome_personagem, tb_classes.nome_classe from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classe_id and tb_classes.nome_classe = "Mago";

                
