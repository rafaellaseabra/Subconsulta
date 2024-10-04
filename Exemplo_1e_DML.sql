create database Vendas_1e;

create table Vendas_eletron(
id_vendas int primary key auto_increment not null,
produto varchar(100) not null,
quantidade int not null,
preco decimal (10,2) not null
);
insert into Vendas_eletron (produto, quantidade,preco)
  values("Celular", "30","4050.00"),
        ("Notebook", "20","3890.00"),
        ("Fone", "15","230.00"),
        ("Carregador", "35","80.00"),
        ("Mouse sem fio", "30","150.00"),
        ("Teclado", "10","199.90"),
        ("Fone Gamer", "17","350.00"),
        ("AirPods pro", "13","1850.00"),
        ("Echo Dot 5a ", "10","370.00"),
        ("Ipad Aplle", "7","4010.00");
        
	Select *from Vendas_eletron;
    select count(*) AS Total_vendas
    from vendas_eletron;
    
    select sum(quantidade) as Total_produtos
    from vendas_eletron;
    
    select avg (preco) as Media_dos_Preços
    from vendas_eletron;
    
    select min(preco) as Menor_Preco
    from vendas_eletron;
    
    select max(preco) as Maior_Preco
    from vendas_eletron;
    
insert into Vendas_eletron (produto, quantidade,preco)
  values("Celular", "2","4050.00"),
        ("Notebook", "5","3890.00"),
        ("Fone", "5","230.00"),
        ("Carregador", "4","80.00"),
        ("Mouse sem fio", "3","150.00"),
        ("Teclado", "5","199.90"),
        ("Fone Gamer", "1","350.00"),
        ("AirPods pro", "4","1850.00"),
        ("Echo Dot 5a ", "5","370.00"),
        ("Ipad Aplle", "2","4010.00");
        
Select *from Vendas_eletron;
     
select produto, count(*) AS Total_vendas
from vendas_eletron
group by produto;

select produto, sum(quantidade) AS Total_produtos_vendas
from vendas_eletron
group by produto
having Total_produtos_vendas > 15;
#Select *from Vendas_eletron;

select produto,quantidade, preco
from vendas_eletron
order by preco asc;  #forma menor ao maior 

select produto,quantidade, preco
from vendas_eletron
order by preco desc  #forma maior ao menor 
limit 5;

select produto,quantidade, preco
from vendas_eletron
order by produto asc; # ordem alfabetica

select produto, preco, 
(select max(preco)from vendas_eletron) AS Maior_Preço  #compara o maior valor ao restante dos valores
from vendas_eletron;

select produto, preco, 
(select min(preco)from vendas_eletron) AS Menor_Preço  #compara o menor valor ao restante dos valores
from vendas_eletron;
        
    
    