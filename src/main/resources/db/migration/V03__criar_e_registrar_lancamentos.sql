create table lancamento(
	codigo bigint(20) primary key auto_increment,
    descricao varchar(50) not null,
    data_vencimento date not null,
    data_pagamento date,
    valor decimal(10,2) not null,
    observacao varchar(100),
    tipo varchar(20) not null,
    codigo_categoria bigint(20) not null,
    codigo_pessoa bigint(20) not null,
    foreign key(codigo_categoria) references categoria(codigo),
    foreign key(codigo_pessoa) references pessoa(codigo)
)Engine=InnoDb default charset=utf8;

insert into lancamento(descricao,data_vencimento,data_pagamento,valor,observacao,tipo,codigo_categoria,codigo_pessoa) 
	values("Salário Mensal", "2017-06-10",null, 6500.00,"Distribuição de lucros","RECEITA",1,1);
    
insert into lancamento(descricao,data_vencimento,data_pagamento,valor,observacao,tipo,codigo_categoria,codigo_pessoa) 
	values("Bahamas", "2017-02-7","2017-02-10", 6500.00,null,"RECEITA",3,3); 
    
insert into lancamento(descricao,data_vencimento,data_pagamento,valor,observacao,tipo,codigo_categoria,codigo_pessoa) 
	values("Top Club", "2017-06-10",null, 120.00,null,"RECEITA",1,1);   
    
insert into lancamento(descricao,data_vencimento,data_pagamento,valor,observacao,tipo,codigo_categoria,codigo_pessoa) 
	values("CEMIG", "2017-02-10","2017-02-10", 140.00,"Geração","RECEITA",3,4);  
    
insert into lancamento(descricao,data_vencimento,data_pagamento,valor,observacao,tipo,codigo_categoria,codigo_pessoa) 
	values("DMAE", "2017-06-10",null, 200.30,null,"DESPESA",3,5);    
    