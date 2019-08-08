INSERT INTO `jobs`(`name`, `label`, `whitelisted`) VALUES
	('woodcutter', 'Leñador', 0)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('woodcutter',0,'empleado','Empleado', 250, '{}', '{}')
;


INSERT INTO `items` (`name`, `label`, `limit`) VALUES
	('madera', 'Madera', 100),
	('maderaf', 'Madera Fina', 100),
	('maderam', 'Madera Mediana', 100),
        ('maderag', 'Madera Grande', 100)
;