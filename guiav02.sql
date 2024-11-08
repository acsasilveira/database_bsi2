create database guia01;
use guia01;

create table TbPessoa 
(	codigo int,
	nome varchar(25),
    cnpj varchar (20)
)engine=InnoDB;

-- Comando para alterar uma tabela
/* ALTER TABLE TbPessoa [comando] */

-- Exemplo de alter table

-- Apagar uma coluna
/* ALTER TABLE TbPessoa DROP COLUMN cnpj*/

-- Adicionar uma coluna
/* ALTER TABLE TbPessoa ADD COLUMN cpf*/

-- Modificar o tipo ou restrição da coluna
/* ALTER TABLE TbPessoa MODIFY COLUMN nome VARCHAR(255) */

-- Renomear a tabela
/* ALTER TABLE TbPessoa RENAME TO TbPessoaFisica*/

-- Modificar o tipo da coluna
/* ALTER TABLE TbPessoa CHANGE COLUMN codigo id IN NOT NULL */

-- Criação da tabela TbCidade
create table TbCidade
(	id int,
	nome varchar(100) not null,
    primary key(id)

) engine=InnoDB;

-- Alterar a tabela TbPessoa para adicionar a coluna cidade
ALTER TABLE TbPessoa ADD COLUMN idCidade int not null;
ALTER TABLE TbPessoa ADD FOREIGN KEY(idCidade) REFERENCES TbCidade(id);

