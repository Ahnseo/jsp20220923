show CREATE TABLE Movie;

CREATE TABLE `Movie` (
  `MovieID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `runtime` varchar(255) DEFAULT '0',
  `releaseDate` varchar(255) DEFAULT '0',
  `directorID` varchar(255) NOT NULL,
  `actorID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MovieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3