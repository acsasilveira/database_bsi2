-- Comando que cria o banco de dados
/* create database guia01; */

 -- Indicar o banco de dados que será usado
 /* use guia01; */

-- Criação da tabela TbPessoa
/* create table TbPessoa
(	id int,
    nome varchar(255),
    CPF varchar(14),
    primary key(id)
)engine=InnoDB;*/

-- Inserção de dados na tabela TbPessoa

/*insert into TbPessoa(id, nome, CPF) values
(1, "Acsa", "123.456.789-10"),
(2, "Calebe", "123.456.789-10"),
(3, "Gabriela", "123.456.789-10"),
(4, "Vicente", "123.456.789-10");*/

-- Tornar algum atributo único
/* create UNIQUE_INDEX cpf_unico on TbPessoa(CPF) */

-- Comando para apagar o banco de dados
/* DROP database guia01;*/