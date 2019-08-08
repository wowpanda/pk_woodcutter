INSERT INTO `jobs`(`name`, `label`, `whitelisted`) VALUES
	('woodcutter', 'Lenhador', 0)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('woodcutter',0,'empleado','Empregado', 250, '{}', '{}')
;


INSERT INTO `items` (`name`, `label`, `limit`) VALUES
	('madera', 'Madeira', 100),
	('maderaf', 'Madeira fina', 100),
	('maderam', 'Madeira média', 100),
        ('maderag', 'Madeira grande', 100)
;