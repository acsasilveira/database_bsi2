use acsa;

insert into tbcidade (idcidade, nomecid, estado) values (1, "Varginha", "MG");
insert into tbcidade (idcidade, nomecid, estado) values
(2, "Alfenas", "MG"),
(3, "Goiânia", "GO"),
(4, "São Paulo", "SP");

insert into tbpessoa(idpessoa, nome, cpf, idcidmora) values
(1, "Acsa", "12345678910", 1),
(2, "Calebe", "12345678910", 4),
(3, "Gabriela", "12345678910", 4),
(4, "Vicente", "12345678910", 4),
(5, "Marcos", "12345678910", 1),
(6, "Bruna", "12345678910", 2),
(7, "Isaque", "12345678910", 3);

insert into tbcurso(idcurso, nomecurso) values
(1, "Sistemas de Informação"),
(2, "Engenharia Civil"),
(3, "Direito"),
(4, "Fisioterapia");

insert into tbpessoacurso(idcurso, idpessoa, dtinicio, dtfim) values
(1, 1, "2024-01-01", "2028-12-31"),
(2, 2, "2030-01-01", "2035-12-31"),
(4, 3, "2007-01-01", "2009-12-31"),
(1, 4, "1998-01-01", "2000-12-31"),
(1, 5, "2025-01-01", "2029-12-31"),
(3, 6, "2019-01-01", "2022-12-31"),
(2, 7, "2025-01-01", "2030-12-31");
