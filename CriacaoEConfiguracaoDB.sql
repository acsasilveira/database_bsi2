create database acsa;

use acsa;

create table tbcidade (
	idcidade int,
    nomecid varchar(30),
    estado char(2),
    primary key(idcidade)
)engine=InnoDB;

create table tbpessoa (
	idpessoa int,
    nome varchar(50),
    cpf varchar(11),
    idcidmora int,
    primary key(idpessoa)
)engine=InnoDB;

create table tbcurso (
	idcurso int,
    nomecurso varchar(30),
    primary key(idcurso)
)engine=InnoDB;

create table tbpessoacurso (
	idcurso int,
    idpessoa int,
    dtinicio date,
    dtfim date,
    primary key(idcurso, idpessoa)
)engine=InnoDB;

alter table tbpessoa add foreign key(idcidmora) references tbcidade(idcidade) on delete cascade on update cascade;

alter table tbpessoacurso add foreign key(idcurso) references tbcurso(idcurso) on delete cascade on update cascade;

alter table tbpessoacurso add foreign key(idpessoa) references tbpessoa(idpessoa) on delete cascade on update cascade;