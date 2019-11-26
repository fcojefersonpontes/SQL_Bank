-- MySQL Script generated by MySQL Workbench
-- Sat 23 Nov 2019 04:24:35 PM -03
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema null_bank
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema null_bank
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `null_bank` DEFAULT CHARACTER SET utf8 ;
USE `null_bank` ;
USE `null_bank`;

DELIMITER $$
USE `null_bank`$$
CREATE DEFINER = CURRENT_USER TRIGGER `null_bank`.`funcionario_AFTER_UPDATE`
BEFORE UPDATE ON `funcionario`
FOR EACH ROW
BEGIN
	IF NEW.salario_f IS NOT NULL AND NEW.salario_f < 1500.00
    THEN
		SET NEW.salario_f=OLD.salario_f;
	END IF;
    
UPDATE agencia 
SET 
    montante_salarial = montante_salarial + (NEW.salario_f-OLD.salario_f)
    
WHERE
    id_agencia = NEW.agencia_id_agencia;
    
END$$

USE `null_bank`$$
CREATE DEFINER = CURRENT_USER TRIGGER `null_bank`.`funcionario_BEFORE_INSERT`
BEFORE INSERT ON `funcionario`
FOR EACH ROW
BEGIN
	IF NEW.salario_f IS NOT NULL AND NEW.salario_f < 1500.00
    THEN
		SET NEW.salario_f=1500.00;
	END IF;

END$$

USE `null_bank`$$
CREATE DEFINER = CURRENT_USER TRIGGER `null_bank`.`funcionario_AFTER_INSERT`
AFTER INSERT ON `funcionario`
FOR EACH ROW
BEGIN
	UPDATE agencia
    SET montante_salarial= montante_salarial + NEW.salario_f
    WHERE id_agencia=NEW.agencia_id_agencia;
END$$

USE `null_bank`$$
CREATE DEFINER = CURRENT_USER TRIGGER `null_bank`.`funcionario_AFTER_DELETE` AFTER DELETE ON `funcionario` FOR EACH ROW
BEGIN
	UPDATE agencia
    SET montante_salarial= montante_salarial - OLD.salario_f
    WHERE id_agencia=OLD.agencia_id_agencia;
END$$


USE `null_bank`$$
CREATE DEFINER = CURRENT_USER TRIGGER `null_bank`.`trasnsacao_AFTER_INSERT` AFTER INSERT ON `transacao` FOR EACH ROW
BEGIN
	UPDATE conta
	SET saldo = saldo + NEW.valor
    where NEW.conta_id_conta = id_conta AND conta_agencia_id_agencia = agencia_id_agencia;
END$$

USE `null_bank`$$
CREATE DEFINER = CURRENT_USER TRIGGER `null_bank`.`dependente_AFTER_INSERT` AFTER INSERT ON `dependente` FOR EACH ROW
BEGIN
	DECLARE contador INT;
    DECLARE mat VARCHAR(5);

    SET @mat = NEW.funcionario_matricula;

SELECT 
    COUNT(funcionario_matricula)
INTO @contador FROM
    dependente
WHERE
    funcionario_matricula = @mat;
    IF @contador >= 5
    THEN
		DELETE FROM dependente WHERE nome_completo_d=NEW.nome_completo_d;
    END IF;
    
END$$

USE `null_bank`$$
CREATE DEFINER = CURRENT_USER TRIGGER `null_bank`.`cliente_tem_conta_AFTER_INSERT` AFTER INSERT ON `cliente_tem_conta` FOR EACH ROW
BEGIN
	DECLARE contador INT;
    DECLARE contador2 INT;
    DECLARE new_id VARCHAR(8);
    DECLARE new_ag VARCHAR(4);   
    
    SET @new_id = NEW.conta_id_conta;
    SET @new_ag = NEW.conta_agencia_id_agencia;
SELECT 
    COUNT(cliente_cpf_c)
INTO @contador FROM
    cliente_tem_conta
WHERE
    conta_id_conta = @new_id;
SELECT 
    COUNT(cliente_cpf_c)
INTO @contador2 FROM
    cliente_tem_conta
WHERE
    conta_agencia_id_agencia = @new_ag;
    IF contador>2
		THEN
		DELETE FROM cliente_tem_conta WHERE conta_id_conta=NEW.conta_id_conta AND conta_agencia_id_agencia = NEW.conta_agencia_id_agencia ;
    END IF;
END$$

USE `null_bank`$$
CREATE DEFINER = CURRENT_USER TRIGGER `null_bank`.`cliente_tem_conta_AFTER_UPDATE` AFTER UPDATE ON `cliente_tem_conta` FOR EACH ROW
BEGIN
	DECLARE contador INT;
    DECLARE contador2 INT;
    DECLARE new_id VARCHAR(8);
    DECLARE new_ag VARCHAR(4);   
    
    SET @new_id = NEW.conta_id_conta;
    SET @new_ag = NEW.conta_agencia_id_agencia;
SELECT 
    COUNT(cliente_cpf_c)
INTO @contador FROM
    cliente_tem_conta
WHERE
    conta_id_conta = @new_id;
SELECT 
    COUNT(cliente_cpf_c)
INTO @contador2 FROM
    cliente_tem_conta
WHERE
    conta_agencia_id_agencia = @new_ag;
    IF contador>2
		THEN
		DELETE FROM cliente_tem_conta WHERE conta_id_conta=NEW.conta_id_conta AND conta_agencia_id_agencia = NEW.conta_agencia_id_agencia ;
    END IF;
END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

