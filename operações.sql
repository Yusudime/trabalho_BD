INSERT into clientes values (36, "Ana Souza", "Rua das Flores, 123", "(85) 91234-5678", "AnaSousa123@gmail.com", "1990-05-12");
/* 
    1. Adicione um novo cliente com os seguintes dados:
        - Nome: Ana Souza
        - Endereço: Rua das Flores, 123
        - Telefone: (85) 91234-5678
        - E-mail:*/
INSERT into clientes values (37, "Carlos Pereira", "Av. Central, 456", "(85) 98765-4321", "CArlosFreeFire2019@gmail.com", "2006-08-22");
/* 
    2. Adicione um novo cliente com os seguintes dados:
        - Nome: Carlos Pereira
        - Endereço: Av. Central, 456
        - Telefone: (85) 98765-4321
        - E-mail:*/
DElETE from clientes where id_cliente = 30;
/* 
    3. Remova o cliente com id_cliente igual a 30.*/
AlTER table locacoes add column data_devolucao DATE;
/* 
    4. Adicione uma nova coluna chamada data_devolucao na tabela locacoes.*/
CREATE into locacoes values (11, 12, 12, "2021-01-01", "2021-01-08", 5.00);
/* 
    5. Adicione uma nova locação com os seguintes dados:
        - id_locacao: 11
        - id_cliente: 12
        - id_filme: 12
        - data_locacao: 2021-01-01
        - data_devolucao: 2021-01-08
        - valor: 5.00*/
CREATE into locacoes values (12, 22, 12, "2021-01-02", "2021-01-09", 5.00);
/* 
    6. Adicione uma nova locação com os seguintes dados:
        - id_locacao: 12
        - id_cliente: 22
        - id_filme: 12
        - data_locacao: 2021-01-02
        - data_devolucao: 2021-01-09
        - valor: 5.00*/
CREATE into locacoes values (13, 32, 12, "2021-01-03", "2021-01-10", 5.00);
/* 
    7. Adicione uma nova locação com os seguintes dados:
        - id_locacao: 13
        - id_cliente: 32
        - id_filme: 12
        - data_locacao: 2021-01-03
        - data_devolucao: 2021-01-10
        - valor: 5.00*/
CREATE into locacoes values (14, 42, 12, "2021-01-04", "2021-01-11", 5.00);
/* 
    8. Adicione uma nova locação com os seguintes dados:
        - id_locacao: 14
        - id_cliente: 42
        - id_filme: 12
        - data_locacao: 2021-01-04
        - data_devolucao: 2021-01-11
        - valor: 5.00*/
CREATE into locacoes values (15, 52, 12, "2021-01-05", "2021-01-12", 5.00);
/* 
    9. Adicione uma nova locação com os seguintes dados:
        - id_locacao: 15
        - id_cliente: 52
        - id_filme: 12
        - data_locacao: 2021-01-05
        - data_devolucao: 2021-01-12
        - valor: 5.00*/
AlTER table clientes add column CPF VARCHAR(11);
/* 
    5. Adicione uma nova coluna chamada CPF na tabela clientes.*/
DELETE into clientes where id_cliente = 36;
/* 
    6. Remova o cliente com id_cliente igual a 36.*/
CREATE into clientes values (36, "Ana Souza", "Rua das Flores, 123", "(85) 91234-5678", "AnaSousa123@gmail.com", "1990-05-12","12345678901");
?/* 
    7. Adicione o CPF 12345678901 ao cliente com id_cliente igual a 36.*/
DELETE from locacoes where id_locacao = 10;
/* 
    8. Remova a locação com id_locacao igual a 10.*/
DELETE from filmes where id_filme = 35;
/* 
    9. Remova o filme com id_filme igual a 35.*/
DELETE from clientes where id_cliente = 35;
/* 
    10. Remova o cliente com id_cliente igual a 35.*/
INSERT from filmes values (51, "Mulher-Maravilha", "Ação", "Patty Jenkins", 2017, "12", 5);
/* 
    11. Adicione um novo filme com os seguintes dados:
        - id_filme: 51
        - titulo: Mulher-Maravilha
        - genero: Ação
        - diretor: Patty Jenkins
        - ano_lancamento: 2017
        - classificacao_etaria: 12
        - estoque: 5*/
--trigger
CREATE TRIGGER atualiza_estoque AFTER INSERT ON locacoes
FOR EACH ROW
BEGIN
    UPDATE filmes SET estoque = estoque - 1 WHERE id_filme = NEW.id_filme;
END;
/* 
    12. Crie um trigger chamado atualiza_estoque que, ao inserir uma nova locação, decrementa o estoque do filme locado.*/
CREATE TRIGGER atualiza_estoque AFTER DELETE ON locacoes
FOR EACH ROW
BEGIN
    UPDATE filmes SET estoque = estoque + 1 WHERE id_filme = OLD.id_filme;
END;
/* 
    13. Crie um trigger chamado atualiza_estoque que, ao remover uma locação, incrementa o estoque do filme devolvido.*/
UPDATE  filmes SET estoque = 10 WHERE id_filme = 12;