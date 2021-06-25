ALTER TABLE jobs add SecondaryJob BOOLEAN NOT NULL DEFAULT FALSE
;

INSERT INTO `jobs` (`name`, `label`, `SecondaryJob`) VALUES
('unemployed2',	'Citizen', 1)
;

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('unemployed2',	0, 'unemployed2', 'Citizen', 0,	'{}', '{}')
;

ALTER TABLE `users`
ADD COLUMN `job2` varchar(255) NULL DEFAULT 'unemployed2' AFTER `job_grade`,
ADD COLUMN `job2_grade` INT NULL DEFAULT 0 AFTER `job2`
;