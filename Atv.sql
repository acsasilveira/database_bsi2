create database atv;

use atv;

-- Criação dos banco de dados:

create table pessoa(
	cdpessoa int,
    nmpessoa varchar(50),
    sexo char(1),
    dtnascimento date,
    cdcidadenasc int,
    cdcidaderes int,
    primary key(cdpessoa)
)engine=InnoDB;

create table aluno(
	cdpessoa int,
    cdcurso int,
    anovestibular int,
    semestrevestibular int,
    classificacao int,
    primary key(cdpessoa)
)engine=InnoDB;

create table professor(
	cdpessoa int,
    cdcursoadminssao int,
    dtadmissao date,
    vlsalario float,
    cddepto int,
    primary key(cdpessoa)
)engine=InnoDB;

create table funcionario(
	cdpessoa int,
    dtadmissao date,
    cddepto int,
    vlsalario float,
    cargo char(20),
    primary key(cdpessoa)
)engine=InnoDB;

create table cidade(
	cdcidade int,
    nmcidade varchar(30),
    sgestado char(2),
    primary key(cdcidade)
)engine=InnoDB;

create table curso(
	cdcurso int,
    nmcurso varchar(30),
    cdcidadeloc int,
    cddepto int,
    cdarea int,
    primary key(cdcurso)
)engine=InnoDB;

create table depto(
	cddepto int,
    nmdepto varchar(30),
    cdfuncionarioger int,
	primary key(cddepto)
)engine=InnoDB;

create table areaestudo(
	cdarea int,
    nmarea varchar(30),
    cdprofessorger int,
    primary key(cdarea)
)engine=InnoDB;

create table disciplina(
	cddisciplina int,
    nmdisciplina varchar(30),
    cdcurso int,
    primary key(cddisciplina)
)engine=InnoDB;

-- Criação dos relacionamentos:

alter table pessoa add foreign key(cdcidadenasc) references cidade(cdcidade) on delete set null on update cascade;

alter table pessoa add foreign key(cdcidaderes) references cidade(cdcidade) on delete set null on update cascade;

alter table aluno add foreign key(cdpessoa) references pessoa(cdpessoa) on delete cascade on update cascade;

alter table aluno add foreign key(cdcurso) references curso(cdcurso) on delete cascade on update cascade;

alter table professor add foreign key(cdpessoa) references pessoa(cdpessoa) on delete cascade on update cascade;

alter table professor add foreign key(cdcursoadminssao) references curso(cdcurso) on delete set null on update cascade;

alter table professor add foreign key(cddepto) references depto(cddepto) on delete set null on update cascade;

alter table funcionario add foreign key(cdpessoa) references pessoa(cdpessoa) on delete cascade on update cascade;

alter table funcionario add foreign key(cddepto) references depto(cddepto) on delete set null on update cascade;

alter table curso add foreign key(cdcidadeloc) references cidade(cdcidade) on delete set null on update cascade;

alter table curso add foreign key(cddepto) references depto(cddepto) on delete set null on update cascade;

alter table curso add foreign key(cdarea) references areaestudo(cdarea) on delete set null on update cascade;

alter table depto add foreign key(cdfuncionarioger) references funcionario(cdpessoa) on delete set null on update cascade;

alter table areaestudo add foreign key(cdprofessorger) references professor(cdpessoa) on delete set null on update cascade;

alter table disciplina add foreign key(cdcurso) references curso(cdcurso) on delete cascade on update cascade;

-- Criando relações N:N

create table aluno_disciplina(
	cdpessoa int,
    cddisciplina int,
    ano int,
    semestre int,
    nota float,
    frequencia int,
    primary key(cdpessoa, cddisciplina, ano, semestre)
)engine=InnoDB;

alter table aluno_disciplina add foreign key(cdpessoa) references pessoa(cdpessoa) on delete cascade on update cascade;

alter table aluno_disciplina add foreign key(cddisciplina) references disciplina(cddisciplina) on delete cascade on update cascade;

create table professor_disciplina(
	cdpessoa int,
    cddisciplina int,
    dtinicio date,
    primary key(cdpessoa, cddisciplina)
)engine=InnoDB;

alter table professor_disciplina add foreign key(cdpessoa) references professor(cdpessoa) on delete cascade on update cascade;

alter table professor_disciplina add foreign key(cddisciplina) references disciplina(cddisciplina) on delete cascade on update cascade;

create table disciplina_pre(
	cddisciplina int,
    cddisciplinapre int,
    primary key(cddisciplina, cddisciplinapre)
)engine=InnoDB;

alter table disciplina_pre add foreign key(cddisciplina) references disciplina(cddisciplina) on delete cascade on update cascade;

alter table disciplina_pre add foreign key(cddisciplinapre) references disciplina(cddisciplina) on delete cascade on update cascade;