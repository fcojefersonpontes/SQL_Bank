DELIMITER $$
USE `null_bank`$$
CREATE DEFINER = CURRENT_USER TRIGGER `null_bank`.`funcionario_AFTER_UPDATE`
BEFORE UPDATE ON `funcionario`
FOR EACH ROW
BEGIN
	IF NEW.salario IS NOT NULL AND NEW.salario < 1500.00
    THEN
		SET NEW.salario=OLD.salario;
	END IF;
    
UPDATE agencia 
SET 
    montante_salarial = montante_salarial + (NEW.salario-OLD.salario)
    
WHERE
    id_agencia = NEW.agencia_id_agencia;
    
END$$

DELIMITER $$
USE `null_bank`$$
CREATE DEFINER = CURRENT_USER TRIGGER `null_bank`.`funcionario_BEFORE_INSERT`
BEFORE INSERT ON `funcionario`
FOR EACH ROW
BEGIN
	IF NEW.salario IS NOT NULL AND NEW.salario < 1500.00
    THEN
		SET NEW.salario=1500.00;
	END IF;

END$$

DELIMITER $$
USE `null_bank`$$
CREATE DEFINER = CURRENT_USER TRIGGER `null_bank`.`funcionario_AFTER_INSERT`
AFTER INSERT ON `funcionario`
FOR EACH ROW
BEGIN
	UPDATE agencia
    SET montante_salarial= montante_salarial + NEW.salario
    WHERE id_agencia=NEW.agencia_id_agencia;
END$$

DELIMITER $$
USE `null_bank`$$
CREATE DEFINER = CURRENT_USER TRIGGER `null_bank`.`funcionario_AFTER_DELETE` AFTER DELETE ON `funcionario` FOR EACH ROW
BEGIN
	UPDATE agencia
    SET montante_salarial= montante_salarial - OLD.salario
    WHERE id_agencia=OLD.agencia_id_agencia;
END$$



