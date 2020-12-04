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


# kpl2020_spring
CREATE TABLE IF NOT EXISTS kpl2020_spring
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

