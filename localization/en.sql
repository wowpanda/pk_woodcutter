INSERT INTO `jobs`(`name`, `label`, `whitelisted`) VALUES
	('woodcutter', 'Woodcutter', 0)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('woodcutter',0,'empleado','Employee', 250, '{}', '{}')
;


INSERT INTO `items` (`name`, `label`, `limit`) VALUES
	('madera', 'Wood', 100),
	('maderaf', 'Fine wood', 100),
	('maderam', 'Medium wood', 100),
        ('maderag', 'Big wood', 100)
;