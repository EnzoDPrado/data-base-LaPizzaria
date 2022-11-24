#Criacao do dataBase da pizzaria
create database db_la_pizzaria;

##########################################
#************TABELAS DE PIZZAS***********#
##########################################

#Criacao da tabela de sabor da pizza
create table tbl_sabor_pizza (
	id int not null auto_increment primary key,
	sabor varchar(50),
	unique index(id)
);

#Criacao da tabela de ingredients da pizza
create table tbl_ingredientes_pizza(
	id int not null auto_increment primary key,
    ingrediente varchar(35) not null,
    unique index(id)
);

#Criacao da tabela de pizza
create table tbl_pizza (
	id int not null auto_increment primary key,
    preco double not null,
    id_sabor_pizza int not null,
    constraint FK_sabor_pizza_pizza
		foreign key(id_sabor_pizza)
        references tbl_sabor_pizza (id),
	unique index(id)
);

#Criacao da tabela de promocao das pizzas
create table tbl_promocao_pizza(
	id int not null auto_increment primary key,
    preco double not null,
    id_pizza int not null,
		constraint FK_pizza_promocao_pizza
        foreign key(id_pizza)
        references tbl_pizza(id),
	unique index(id)
);

#Criacao da tabela de pizzas favoritas
create table tbl_pizza_favorito(
	id int not null auto_increment primary key,
    id_pizza int not null,
		constraint FK_pizza_pizza_favorito
        foreign key(id_pizza)
        references tbl_pizza(id),
	unique index(id)
);

##########################################
#************TABELAS DE BEBIDAS**********#
##########################################

#Criacao da tabela do tipo de bebidas
create table tbl_tipo_bebida(
	id int not null auto_increment primary key,
    tipo varchar(75) not null,
    unique index(id)
);

#Criacao da tabela de sabor da bebida
create table tbl_sabor_bebida(
	id int not null auto_increment primary key,
    sabor varchar(45),
    unique index(id)
);

#Criacao da tabela de marca da bebida
create table tbl_marca_bebida(
	id int not null auto_increment primary key,
    marca varchar(50) not null,
	unique index(id)
);





