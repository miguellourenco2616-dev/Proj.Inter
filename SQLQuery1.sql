use BD_Logística;
go

create table Cidade ( 
    codigo int primary key, 
    nome varchar(150) not null 
); 

create table CEP ( 
    nr int primary key, 
    cidade_codigo int not null, 
    foreign key (cidade_codigo) references Cidade(codigo) 
); 

create table Pessoa (
    codigo int primary key,    
    id int,                   
    nome varchar(150), 
    cpf varchar(20), 
    telefone varchar(20), 
    nr int, 
    cep_nr int not null, 
    foreign key (cep_nr) references CEP(nr) 
); 

create table Cliente ( 
    codigoPessoa int primary key,   
    estrela int, 
    foreign key (codigoPessoa) references Pessoa(codigo) 
); 

create table Entregador ( 
    codigoPessoa int primary key,   
    salario decimal(10,2), 
    foreign key (codigoPessoa) references Pessoa(codigo) 
); 

create table Entrega ( 
    idEntrega int identity primary key,    
    logradouro varchar(150), 
    nome varchar(150), 
    status varchar(50), 
    valor decimal(10,2), 
    dataHoraSaida datetime, 
    cep_nr int not null, 
    foreign key (cep_nr) references CEP(nr) 
); 

create table Avaliacao ( 
    id int primary key,              
    comentario varchar(300), 
    notaCliente int, 
    tempoEntrega int, 
    notaEntregador int, 
    cliente_codigoPessoa int not null, 
    entregador_codigoPessoa int not null, 
    entrega_id int not null, 
    foreign key (cliente_codigoPessoa) references Cliente(codigoPessoa), 
    foreign key (entregador_codigoPessoa) references Entregador(codigoPessoa), 
    foreign key (entrega_id) references Entrega(idEntrega) 
); 
 
insert into Cidade values (1, 'São Paulo');   
insert into Cidade values (2, 'Santos');   
insert into Cidade values (3, 'Sjrp');  
insert into Cidade values (4, 'Ribeirão Preto');   
insert into Cidade values (5, 'Mirassol');   
insert into Cidade values (6, 'Itambé'); 
  
insert into CEP values (12345678, 1);   
insert into CEP values (21341311, 2);   
insert into CEP values (23242415, 3);  
insert into CEP values (54387690, 4);   
insert into CEP values (24163537, 5);   
insert into CEP values (98642154, 6);  

insert into Pessoa (codigo, id, nome, cpf, telefone, nr, cep_nr) values (1, 10, 'Arthur', '96353267897', '998243267', 200, 12345678);  
insert into Pessoa (codigo, id, nome, cpf, telefone, nr, cep_nr) values (2, 20, 'John', '63521456721', '987565438', 150, 21341311);   
insert into Pessoa (codigo, id, nome, cpf, telefone, nr, cep_nr) values (3, 30, 'Robertson', '33238765980', '903745632', 180, 23242415);  
insert into Pessoa (codigo, id, nome, cpf, telefone, nr, cep_nr) values (4, 40, 'Carl', '96353267897', '998243267', 220, 54387690);  
insert into Pessoa (codigo, id, nome, cpf, telefone, nr, cep_nr) values (5, 50, 'Tommy', '63521456721', '987565438', 170, 24163537);   
insert into Pessoa (codigo, id, nome, cpf, telefone, nr, cep_nr) values (6, 60, 'Niko', '33238765980', '903745632', 190, 98642154); 

insert into Cliente (codigoPessoa, estrela) values (1, 5);   
insert into Cliente (codigoPessoa, estrela) values (2, 4);  
insert into Cliente (codigoPessoa, estrela) values (3, 3); 

insert into Entregador (codigoPessoa, salario) values (4, 2500.00);   
insert into Entregador (codigoPessoa, salario) values (5, 2900.00);   
insert into Entregador (codigoPessoa, salario) values (6, 3000.00);  

insert into Entrega (logradouro, nome, status, valor, dataHoraSaida, cep_nr) values ('Rua Coronel', 'Pacote 1', 'Saiu para entrega', 50.00, '2024-11-15T10:00:00', 12345678); 
insert into Entrega (logradouro, nome, status, valor, dataHoraSaida, cep_nr) values ('Rua Spinola', 'Pacote 2', 'Entregue', 75.00, '2024-11-16T09:30:00', 12345678); 
insert into Entrega (logradouro, nome, status, valor, dataHoraSaida, cep_nr) values ('Rua Castro', 'Pacote 3', 'A caminho', 120.00, '2024-11-17T14:45:00', 12345678); 

insert into Avaliacao (id, comentario, notaCliente, tempoEntrega, notaEntregador, cliente_codigoPessoa, entregador_codigoPessoa, entrega_id) values (1, 'Rápido', 5, 20, 5, 1, 4, 1),
(2, 'Demorado', 3, 50, 3, 2, 5, 2),
(3, 'Bom', 5, 30, 4, 3, 6, 3);

select * from Cidade;   
select * from CEP;   
select * from Pessoa;   
select * from Cliente;   
select * from Entregador;   
select * from Entrega;   
select * from Avaliacao; 