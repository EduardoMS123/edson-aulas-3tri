create table tb_pedido(
cod_pedido int auto_increment,
data date not null,
valor_pedido decimal(10,2) not null,
cod_cliente int not null,
primary key (cod_pedido),
constraint fk_pedido_cliente foreign key(cod_cliente)
references Tb_CLIENTE(cod_cliente)
);
