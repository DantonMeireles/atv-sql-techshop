drop database if exists db_techShop; -- dropando para agilizar o processo

/* TAREFA 1*/
create database if not exists db_techShop; -- Criando banco

use db_techShop; -- Abrindo o banco

/* TAREFA 2*/
create table if not exists tb_cliente( -- Criando tabela cliente
id_cliente int not null auto_increment,
nome_cliente varchar(255),
email_cliente varchar(255),
telefone_cliente char (11),
dt_nascimento_cliente date,

constraint pk_cliente primary key (id_cliente)
);

/* TAREFA 3*/
INSERT INTO tb_cliente (nome_cliente, email_cliente, telefone_cliente, dt_nascimento_cliente) VALUES -- inserindo dados
('João Silva', 'joao.silva@example.com', '11987654321', '1990-05-15'),
('Maria Souza', 'maria.souza@example.com', '11912345678', '1985-10-20'),
('Carlos Oliveira', 'carlos.oliveira@example.com', NULL, '2000-02-10');

/* TAREFA 4*/
select * from tb_cliente;

/*TAREFA 5*/
update tb_cliente -- atualizando o telefone do cliente com id 3, pois eu cadastrei esse cliente como valor nulo
	set telefone_cliente = '40028922'
		where id_cliente = 3;

/* TAREFA 6*/
/* essa tarefa pede para excluir um cliente, porém isso não é o ideal,
	seria melhor eu fazer um campo na tabela cliente, chamado "cliente ativo" poderia ser do tipo ENUM com valores 'SIM' e 'NAO'
		para evitar perder dados*/
delete from tb_cliente
	where id_cliente = 1;
    
select * from tb_cliente;