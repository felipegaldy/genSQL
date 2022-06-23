CREATE DATABASE db_rhgeneration;

USE db_rhgeneration;

CREATE TABLE tb_funcionario(
	
    id BIGINT auto_increment primary key,
    nome VARCHAR(255),
    -- podemos usar decimal quado estamos trabalhando com dinheiro
    salario DECIMAL(9,2),
    setor VARCHAR(255),
    matricula int
    
);

select * FROM tb_funcionario;
-- nome / salario / setor / matricula
insert into tb_funcionario(nome, salario, setor, matricula)VALUES("OFF", 1000.00, "Full Stack", 04);

update tb_funcionario
set nome = "Serena";

SET SQL_SAFE_UPDATES = 1;

delete from tb_funcionario where id = 2;

select * from tb_funcionario where salario > 2000;
select * from tb_funcionario where salario < 2000;
select id, nome, matricula, max(salario) from tb_funcionario;

select * from tb_funcionario;