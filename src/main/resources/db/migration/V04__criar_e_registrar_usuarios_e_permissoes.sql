CREATE TABLE usuario (
	codigo bigint(20) primary key,
    nome varchar(50) not null,
    email varchar(50) not null,
    senha varchar(150) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;  

CREATE TABLE permissao (
	codigo bigint(20) primary key,
    descricao varchar(50) not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE usuario_permissao (
	codigo_usuario bigint(20) not null,
    codigo_permissao bigint(20) not null,
    primary key (codigo_usuario,codigo_permissao),
    foreign key (codigo_usuario) references usuario(codigo),
    foreign key (codigo_permissao) references permissao(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

Insert into usuario(codigo, nome, email, senha) values (1, "Administrador", "admin@algamoney.com", "$2a$10$geEMWi9mhC9jgulxMjoIV.KSLU.jxL/TMKde/K6xSF./lk96nDQYS");
Insert into usuario(codigo, nome, email, senha) values (2, "Maria Silva", "maria@algamoney.com", "$2a$10$rZ/HbKf4f/kBzLxKrAZD1.agr.yt.9S0XG/CKj/ORKnTJr4lAw44W");

INSERT into permissao(codigo, descricao) values (1, "ROLE_CADASTRAR_CATEGORIA");
INSERT into permissao(codigo, descricao) values (2, "ROLE_PESQUISAR_CATEGORIA");
INSERT into permissao(codigo, descricao) values (3, "ROLE_CADASTRAR_PESSOA");
INSERT into permissao(codigo, descricao) values (4, "ROLE_REMOVER_PESSOA");
INSERT into permissao(codigo, descricao) values (5, "ROLE_PESQUISAR_PESSOA");
INSERT into permissao(codigo, descricao) values (6, "ROLE_CADASTRAR_LANCAMENTO");
INSERT into permissao(codigo, descricao) values (7, "ROLE_REMOVER_LANCAMENTO");
INSERT into permissao(codigo, descricao) values (8, "ROLE_PESQUISAR_LANCAMENTO");

-- admin
INSERT into usuario_permissao(codigo_usuario, codigo_permissao) values (1,1);
INSERT into usuario_permissao(codigo_usuario, codigo_permissao) values (1,2);
INSERT into usuario_permissao(codigo_usuario, codigo_permissao) values (1,3);
INSERT into usuario_permissao(codigo_usuario, codigo_permissao) values (1,4);
INSERT into usuario_permissao(codigo_usuario, codigo_permissao) values (1,5);
INSERT into usuario_permissao(codigo_usuario, codigo_permissao) values (1,6);

-- maria
INSERT into usuario_permissao(codigo_usuario, codigo_permissao) values (2,2);
INSERT into usuario_permissao(codigo_usuario, codigo_permissao) values (2,5);
INSERT into usuario_permissao(codigo_usuario, codigo_permissao) values (2,8);