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







