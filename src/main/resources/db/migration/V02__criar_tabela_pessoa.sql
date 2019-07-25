create table pessoa(
	codigo bigint(20) primary key auto_increment not null,
    nome varchar(50) not null,
    logradouro varchar(50),
    numero varchar(50),
    complemento varchar(50),
    bairro varchar(50),
    cep varchar(50) ,
    cidade varchar(50),
    estado varchar(50),
    ativo boolean not null
)Engine=Innodb DEFAULT charset=utf8;

insert into pessoa(nome,logradouro,numero,complemento,bairro,cep,cidade,estado,ativo)
	values("Ítalo","Rua 56", "100","casa","Jeiressate 2","0000-00","Maracanaú", "CE",true);
    
insert into pessoa(nome,logradouro,numero,complemento,bairro,cep,cidade,estado,ativo)
	values("Ian","Rua 56", "100","casa","Jeiressate 2","0000-00","Maracanaú", "CE",false);  
    
insert into pessoa(nome,logradouro,numero,complemento,bairro,cep,cidade,estado,ativo)
	values("Enzo","Rua 56", "100","casa","Jeiressate 2","0000-00","Maracanaú", "CE",true);
    
    insert into pessoa(nome,logradouro,numero,complemento,bairro,cep,cidade,estado,ativo)
	values("Jonathan","Rua Francisco", "1230","casa","Jeiressate 2","0000-11","Maracanaú", "CE",true);
    
    
