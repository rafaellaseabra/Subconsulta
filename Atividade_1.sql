create database Industria_1E;

create table Funcionarios(
codfunc int primary key auto_increment not null,
nomefunc varchar (100) not null,
sexofunc varchar(50) not null,
bairrofunc varchar (100) not null,
salario decimal (10,2) not null,
setor varchar (100) not null
);

insert into Funcionarios(nomefunc, sexofunc, bairrofunc, salario, setor)
  values("Larissa Menezes", "F","Jabaquara", "1200.00", "Marketing"),
        ("Selma Nunes", "F","Grajaú", "3800.00", "Vendas"),
        ("Leandro Henrinque", "M","Socorro", "2950.00", "RH"),
        ("Amélia Jeremias", "F","Socorro", "4200.00", "Marketing"),
        ("Cláudio Jorge Silva", "M","Jabaquara", "1480.00", "Vendas"),
        ("Luciano Souza", "M","Pedreira", "1000.00", "Vendas"),
        ("Gabriela Santos Nunes", "F","Jurubatuba", "4150.00", "Spervisora"),
        ("Rafaella Vieira Jr", "F","Jabaquara", "700.00", "Marketing"),
        ("Suzana Crispim", "F","Grajaú", "5600.00", "Produção"),
        ("Sabrina Oliveira Castro", "F","Pedreira", "2900.00", "Marketing"),
        ("Jarbas Silva Nunes", "M","Jurubatuba", "5300.00", "Produção"),
		("Ralf Borges", "M","Jabaquara", "1600.00", "Marketing");
        
Select *from Funcionarios;
# 1) soma 
select sum(salario) as Total_Salários
    from Funcionarios;
    
  #2) quantidade de funcionarios no marketing  
SELECT COUNT(*) AS Funcionarios_Marketing
FROM Funcionarios
WHERE setor = "Marketing";

# 3) média salarial por cada setor
select setor, avg(salario) as Media_dos_Salários
from Funcionarios
group by setor
order by  Media_dos_Salários desc;

# 4) Salário menos de 3 mil e bairro socorro
select count(*) AS Total_salarios
from Funcionarios
WHERE salario < 3000 AND bairrofunc = "Socorro";

# 5)
SELECT setor, COUNT(*) AS qtd_funcionarios
FROM Funcionarios
GROUP BY setor
HAVING qtd_funcionarios > 3;








