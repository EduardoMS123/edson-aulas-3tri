



create table tb_livro(
cod_livro int auto_increment,
valor decimal(10,2) not null,
ano_publicacao int not null,
categoria varchar(25) not null,
titulo varchar(50) not null,
isbn varchar(25) not null,
autor varchar(25) not null,
cod_editora int not null,
primary key(cod_livro)
);

create table tb_pedido(
cod_pedido int auto_increment not null,
data date not null,
valor_pedido decimal(10,2) not null,
cod_cliente int not null,
primary key(cod_pedido),
key fk_pedido_cliente (cod_cliente),
constraint fk_pedido_cliente foreign key (cod_cliente) references Tb_CLIENTE (cod_cliente)
);




