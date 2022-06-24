use db_rhgeneration;-- indica o banco de dados a ser


drop table tb_funcionario;

create table tb_funcionarios(
	id bigint auto_increment primary key,
    nome varchar(255),
    salario decimal(9,2),
    matricula int,
    setor_id bigint, 
    
    foreign key (setor_id) references tb_setor(id)
);

create table tb_setor(
	id bigint auto_increment primary key,
    nome_setor varchar(255)
);


insert into tb_setor(nome_setor) 
	values("Front-End"),
			("Back-End"),
            ("Full-Stack");
            
select * from tb_setor;

-- query de inserção de dados
INSERT INTO tb_funcionarios(nome, salario, matricula, setor_id)VALUES("Wan",20000,1,3);
INSERT INTO tb_funcionarios(nome, salario, matricula, setor_id)VALUES("Wellington",15000,2,1);
INSERT INTO tb_funcionarios(nome, salario, matricula, setor_id)VALUES("Rosa",23000,3,2);

select * from tb_funcionarios;


select * from tb_funcionarios inner join tb_setor
on tb_setor.id = tb_funcionarios.setor_id;
