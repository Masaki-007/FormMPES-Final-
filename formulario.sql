CREATE TABLE dados_pessoais(id_dado int primary key, dado varchar(100));



CREATE TABLE tipo_tratamento(id_tipo_tratamento int AUTO_INCREMENT primary key, tratamento varchar(100));



CREATE TABLE tratamento(id_tratamento int AUTO_INCREMENT primary key

                       ,id_base int 

                       ,sensivel bit

                       ,objetivo varchar(4000)

                       ,compartilhamento bit

                       ,armazenamento varchar(100)

                       ,retencao varchar(100));



CREATE TABLE tratamento_tipo_tratamento(id_tratamento int

                                       ,id_tipo_tratamento int);



ALTER TABLE tratamento_tipo_tratamento add constraint fk_tratamento foreign key (id_tratamento) references tratamento(id_tratamento);

ALTER TABLE tratamento_tipo_tratamento add constraint fk_tipo_tratamento foreign key (id_tipo_tratamento) references tipo_tratamento(id_tipo_tratamento);



CREATE TABLE tratamento_dados_pessoais(id_tratamento int

                                      ,id_dado int);



ALTER TABLE tratamento_dados_pessoais add constraint fk_tratamento_dp foreign key (id_tratamento) references tratamento(id_tratamento);

ALTER TABLE tratamento_dados_pessoais add constraint fk_dados_pessoais foreign key (id_dado) references dados_pessoais(id_dado);

INSERT INTO base_legal(base_legal)
VALUES('I - Consentimento');

INSERT INTO base_legal(base_legal)
VALUES('II - Cumprimento de obrigação legal ou regulatória');

INSERT INTO base_legal(base_legal)
VALUES('III - Execução de políticas públicas');

INSERT INTO base_legal(base_legal)
VALUES('IV - Estudos por órgão de pesquisa');

INSERT INTO base_legal(base_legal)
VALUES('V - Execução de contrato');

INSERT INTO base_legal(base_legal)
VALUES('VI - Exercício regular de direitos em processo judicial');

INSERT INTO base_legal(base_legal)
VALUES('VII - Proteção da vida ou da incolumidade física do titular');

INSERT INTO base_legal(base_legal)
VALUES('VIII - Tutela da saúde');

INSERT INTO base_legal(base_legal)
VALUES('IX - Legítimo interesse');

INSERT INTO base_legal(base_legal)
VALUES ('X - Proteção do crédito');


INSERT INTO dados_pessoais(dado) 
VALUES('CPF');

INSERT INTO dados_pessoais(dado) 
VALUES('Genero');

INSERT INTO dados_pessoais(dado)
VALUES('Login');

INSERT INTO dados_pessoais(dado)
VALUES('Matricula');

INSERT INTO dados_pessoais(dado)
VALUES('Nome');
     
INSERT INTO dados_pessoais(dado)
VALUES('RG');

INSERT INTO dados_pessoais(dado)
VALUES('Saude');

INSERT INTO dados_pessoais(dado)
VALUES('Telefone celular');

create table base_legal(id_base int AUTO_INCREMENT primary key, base_legal varchar(200));



