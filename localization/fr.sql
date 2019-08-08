INSERT INTO `jobs`(`name`, `label`, `whitelisted`) VALUES
	('woodcutter', 'Bûcheron', 0)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('woodcutter',0,'empleado','Employé', 250, '{}', '{}')
;


INSERT INTO `items` (`name`, `label`, `limit`) VALUES
	('madera', 'Bois', 100),
	('maderaf', 'Bois précieux', 100),
	('maderam', 'Bois moyen', 100),
        ('maderag', 'Grand bois', 100)
;