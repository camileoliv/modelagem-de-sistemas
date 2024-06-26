CREATE TABLE alunos (
id int not null primary key,
nome varchar (255),
sobrenome varchar (255),
idade int,
email varchar (50));

CREATE TABLE pessoa (
id int primary key not null auto_increment,
nome varchar(255),
telefone varchar(11));

insert into alunos (id,nome,sobrenome,idade,email) values(1,'Camile', 'Ferreira',22,'bvhvb@gmail.com');
insert into alunos (id,nome,sobrenome,idade,email) values(2,'Marcelo', 'Ferreira',24,'bvbncvb@gmail.com');
select*from alunos; -- executa todos os dados

insert into pessoa(nome,telefone) values('Renato','94002-89221');
select*from pessoa; -- executa todos os dados

update alunos -- atualizar informação
set nome='Camilee'
where id = 1

delete from alunos -- deletar
where id =2;

CREATE TABLE EQUIPAMENTO (
  NOME INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CLIENTE_idCLIENTE INTEGER UNSIGNED  NOT NULL  ,
  TIPO INTEGER UNSIGNED  NULL  ,
  CONDIÇÃO INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(NOME)  ,
INDEX EQUIPAMENTO_FKIndex1(CLIENTE_idCLIENTE)  ,
INDEX EQUIPAMENTO_FKIndex2(CLIENTE_idCLIENTE));

CREATE TABLE INSTRUTOR (
  NOME INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  CLIENTE_idCLIENTE INTEGER UNSIGNED  NOT NULL  ,
  ESPECIALIZAÇÃO INTEGER UNSIGNED  NULL  ,
  ANOS DE EXPERIENCIA INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(NOME)  ,
INDEX INSTRUTOR_FKIndex1(CLIENTE_idCLIENTE));

CREATE TABLE AULAS (
  NOME INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  INSTRUTOR_NOME INTEGER UNSIGNED  NOT NULL  ,
  CLIENTE_idCLIENTE INTEGER UNSIGNED  NOT NULL  ,
  HORARIO INTEGER UNSIGNED  NULL  ,
  TIPO DE AULA INTEGER UNSIGNED  NULL  ,
  CAPACIDADE MAXIMA INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(NOME)  ,
INDEX AULAS_FKIndex1(CLIENTE_idCLIENTE)  ,
INDEX AULAS_FKIndex2(INSTRUTOR_NOME));

CREATE TABLE INSTALAÇÕES (
  NOME INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  EQUIPAMENTO_NOME INTEGER UNSIGNED  NOT NULL  ,
  CLIENTE_idCLIENTE INTEGER UNSIGNED  NOT NULL  ,
  CAPACIDADE INTEGER UNSIGNED  NULL  ,
  LOCALIZAÇÃO INTEGER UNSIGNED  NULL  ,
  HORARIO DE FUNCIONAMENTO INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(NOME)  ,
INDEX INSTALAÇÕES_FKIndex1(CLIENTE_idCLIENTE)  ,
INDEX INSTALAÇÕES_FKIndex2(EQUIPAMENTO_NOME));

CREATE TABLE CLIENTE (
  idCLIENTE INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  NOME INTEGER UNSIGNED  NULL  ,
  IDADE INTEGER UNSIGNED  NULL  ,
  SEXO INTEGER UNSIGNED  NULL  ,
  PLANO DE ADESÃO INTEGER UNSIGNED  NULL  ,
  HISTORICO DE TREINO INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(idCLIENTE));
