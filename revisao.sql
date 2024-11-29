-- Anotações CLARA

create database dbrevisão;
use dbrevisão;

create table tbpessoa
( idpessoa int,
  nome varchar(70) not null, -- Não pode ficar vazio
  primary key(idpessoa)
)engine=innodb;

-- Passo 3: Adicionando a coluna cpf
alter table tbpessoa add column cpf varchar(11) unique;

-- Passo 4: Tirando a coluna cpf
alter table tbpessoa drop column cpf;
alter table tbpessoa add column CPF varchar(11);
-- Criando index depois do campo já ter sido adicionado
create unique index cpfunico on tbpessoa(CPF);

-- Passo 5: Inserindo valores
insert into tbpessoa(idpessoa, nome) values
(1, "Acsa"),
(2, "Cristian");
-- Passo 6: alterar dados e acrescentar um CPF
-- Comando: select * from tbpessoa;
update tbpessoa set CPF="1234567" where idpessoa=1;
select * from tbpessoa;

-- Passo 7:
alter table tbpessoa modify column idpessoa int auto_increment;

-- Passo 8: 
insert into tbpessoa(nome) values
("Maria Clara"); 

select * from tbpessoa;
insert into tbpessoa(nome, CPF) values
("Vinicius", "4567891"),
("Vitor", NULL);

-- Passo 9:
delete from tbpessoa where nome="Vitor";

	-- Caso erro: Desabilitar a última opção em SQL editor

-- Passo 10
create table tbcidade
(	idcidade int auto_increment,
	nomecid varchar(30),
    estado char(2),
	primary key(idcidade)
)engine=InnoDB;

-- Passo 11
insert into tbcidade(nomecid, estado) values
("Lavras","MG"),
("Varginha", "MG"),
("São Tomé", "MG"),
("Campinas", "SP");

-- Passo 12: Estabelecendo relacionamento
alter table tbpessoa add column idcidmora int; -- Criando a chave estrangeira na tabela cidade
alter table tbpessoa add foreign key(idcidmora) references tbcidade(idcidade); -- Estabelecendo a chave estrangeira na tabela cidade