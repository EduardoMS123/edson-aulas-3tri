create table Tb_CLIENTE (
cod_cliente int auto_increment,
nome varchar(50) not null,
telefone_1 varchar(14),
telefone_2 varchar(14),
email varchar(50) not null,
rua varchar(50) not null,
bairro varchar(20) not null,
cidade varchar(15) not null,
estado varchar(15) not null,
primary key (cod_cliente)            
);


