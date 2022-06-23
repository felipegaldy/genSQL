CREATE DATABASE db_escola;

USE db_escola;
drop table tb_alunos;
CREATE TABLE tb_alunos (
    id bigint auto_increment primary key,
    nome VARCHAR(255),
    idade INT,
	curso VARCHAR(255),
    endereco VARCHAR(255),
	nota int(2)
);

insert into tb_alunos(nome, idade, curso, endereco, nota)
	values( "Serena", 18, 'Programação', 'Rua 21', 10),
			( 'Richard', 21, 'Programação', 'Rua 21', 5),
            ('Gabriel', 19, 'Programação', 'Rua 22' , 10),
			( 'Maria', 18, 'Programação', 'Rua 22',9),
			( 'João', 18, 'Programação', 'Rua 23',10),
            ("Felipe" , 28 , "Ciencias da Computacao" , "Rua do Felipe", 8.0),
            ("Marina" , 24 , "Psicologia" , "Rua da Maria" , 6.5),
			( 'Charles', 19, 'Programação', 'Rua 21', 10);
                
select * from tb_alunos where nota > 7.0;
select * from tb_alunos where nota < 7.0;

update tb_alunos set nota = 10 where id = 6;



