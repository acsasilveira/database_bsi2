create database dbguia02;
use dbguia02;

create table tbaluno
(idaluno int,
	nomealuno varchar(60),
    primary key(idaluno)
)engine=InnoDB;

create table tbcidade
(   idcidade int,
	nomecidade varchar(60),
    primary key(idcidade)
)engine=InnoDB;

-- Adicionar a chave estrangeira
 alter table tbaluno add column idCidade int not null;
 alter table tbaluno add foreign key(idCidade) references tbcidade(idcidade) on delete cascade on update cascade;

-- Forma de fazer o insert
-- Primeira forma
insert into tbcidade(idcidade,nomecidade) values (01, "Varginha");
insert into tbcidade(idcidade,nomecidade) values (02, "Lavras");
insert into tbcidade(idcidade,nomecidade) values (03, "Belo Horizonte");
insert into tbcidade(idcidade,nomecidade) values (04, "Ribeirão Preto");

-- Segunda forma
insert into tbaluno(idaluno,nomealuno,idCidade) values
(01,"Acsa",01),
(02, "Clara", 04),
(03, "Vini", 02);

-- ALtera a coluna para que ela não seja mais chave estrangeira
alter table tbaluno drop foreign key tbaluno_ibfk_1;

-- Adicionar a chave estrangeira configurando a deleção e a atualização
-- Cascade -> apaga todos os associados
-- Restrict -> proibe a ação
-- No action (padrão) -> não faz nada
-- Set null -> muda o valor da chave estrangeira
alter table tbaluno add foreign key(idCidade) references tbcidade(idcidade) on delete cascade on update cascade;

select * from tbcidade;

select * from tbaluno;
