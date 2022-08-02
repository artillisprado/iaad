create database empresa_artillis;
use empresa_artillis;
create table PROGRAMADOR(
	id_programador INT(5),
	id_startup INT(5),
	nome_programador VARCHAR(15) NOT NULL,
	gênero CHAR(1),
	Datanasc DATE NOT NULL,
	email varchar(50),
	PRIMARY KEY(id_programador)); 
create table detalhes_programador(
	id_programador INT(5),
	tipo_sanguineo VARCHAR(2) NOT NULL,
	cidade_uf VARCHAR(15) NOT NULL,
	peso INT(3) NOT NULL,,
	altura FLOAT(3,2) NOT NULL); 
create table Linguagem_Programação(
	id_linguagem INT(5) PRIMARY KEY,
	nome_linguagem VARCHAR(15) NOT NULL, 
	ano_lançamento YEAR NOT NULL);
create table Startup(
	id_startup INT PRIMARY KEY,
	nome_startup VARCHAR(15) NOT NULL,
	cidade_sede VARCHAR(15) NOT NULL);
create table Programador_Linguagem(
	id_programador INT(5) NOT NULL,
	id_linguagem INT(5) NOT NULL);

insert into PROGRAMADOR values
	(30001, 10001, 'João Pedro','M', '1993-06-23', 'joaop@mail.com'),
	(30002, 10002, 'Paula Silva', 'F', '1986-01-10', 'paulas@mail.com'),
	(30003, 10003, 'Renata Vieira','F', '1991-07-05', 'renatav@mail.com'),
	(30004, 10004, 'Felipe Santos', 'M', '1976-11-25', 'felipes@mail.com'),
	(30005, 10001, 'Ana Cristina', 'F', '1968-02-19', 'anac@mail.com'),
	(30006, 10004, 'Alexandre Alves','M', '1988-07-07', 'alexandrea@mail.com'),
	(30007, 10002, 'Laura Marques', 'M', '1987-10-04', 'lauram@mail.com');
insert into Linguagem_Programação values
	(20001, 'Python', 1991),
	(20002, 'PHP', 1995),
	(20003, 'Java', 1995),
	(20004, 'C', 1972),
	(20005, 'Javascript', 1995),
	(20006, 'Dart', 2011);
insert into Startup values
	(10001, 'Tech4Toy', 'Porto Alegre'),
	(10002, 'Smart123', 'Belo Horizonte'),
	(10003, 'knowledgeUp', 'Rio de Janeiro'),
	(10004, 'BSI Next Level', 'Recife'),
	(10005, 'QualiHealth', 'São Paulo'),
	(10006, 'ProEdu', 'Florianópolis');
insert into Programador_Linguagem values
	(30001, 20001),
	(30001, 20002),
	(30002, 20003),
	(30003, 20004),
	(30003, 20005),
	(30004, 20005),
	(30007, 20001),
	(30007, 20002);
alter table PROGRAMADOR ADD FOREIGN KEY(id_startup) REFERENCES STARTUP(id_startup)
alter table Programador_Linguagem ADD FOREIGN KEY(id_programador) REFERENCES PROGRAMADOR  (id_programador);
alter table Programador_Linguagem ADD FOREIGN KEY(id_programador) REFERENCES Linguagem_Programação  (id_linguagem);
