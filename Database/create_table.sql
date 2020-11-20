# kpl2020_autumn
CREATE TABLE IF NOT EXISTS kpl2020_autumn
(
	id INT PRIMARY KEY auto_increment,
	matchTime VARCHAR(255) DEFAULT NULL,
	teamA VARCHAR(255) DEFAULT NULL,
	teamB VARCHAR(255) DEFAULT NULL,
	score VARCHAR(255) DEFAULT NULL,
	scoreA VARCHAR(255) DEFAULT NULL,
	scoreB VARCHAR(255) DEFAULT NULL,
	BO VARCHAR(255) DEFAULT NULL
);

# clean
UPDATE kpl2020_autumn SET scoreA = TRIM(SUBSTRING_INDEX(score,'-',1)), scoreB = TRIM(SUBSTRING_INDEX(score,'-',-1)) WHERE score <> '--';
UPDATE kpl2020_autumn SET BO = REPLACE(BO,'BO','');

SELECT * FROM kpl2020_autumn