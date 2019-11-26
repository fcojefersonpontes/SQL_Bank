USE `null_bank`;

drop view view_cliente;
drop view v_today;

CREATE VIEW v_today (today) AS SELECT CURRENT_DATE;

CREATE VIEW `view_agencia` AS select * from agencia;

CREATE VIEW `view_cliente` AS select * from cliente;

CREATE VIEW `view_cliente_tem_conta` AS select * from cliente_tem_conta;

CREATE VIEW `view_conta` AS select * from conta;

CREATE VIEW `view_corrente` AS select * from corrente;

CREATE VIEW `view_dependente` AS select * from dependente;

CREATE VIEW `view_email` AS select * from email;

CREATE VIEW `view_especial` AS select * from especial;

CREATE VIEW `view_funcionario` AS select * from funcionario;

CREATE VIEW `view_poupanca` AS select * from poupanca;

CREATE VIEW `view_telefone` AS select * from telefone;

CREATE VIEW `view_transação` AS
    SELECT 
        *
    FROM
        transacao;

create view `view_cliente_conta` AS
select * 
FROM
	cliente AS cl,
	conta AS co,
	cliente_tem_conta AS ctc
WHERE
	cl.cpf = ctc.cliente_cpf
	AND co.id_conta = ctc.conta_id_conta
	AND co.agencia_id_agencia = ctc.conta_agencia_id_agencia
    ;

USE `null_bank`;

CREATE VIEW `contas_do_gerente` AS 
	select * 
	from funcionario as f, view_cliente_conta as c
    where f.matricula = c.gerente_matricula
    ;
select * from view_cliente_conta;