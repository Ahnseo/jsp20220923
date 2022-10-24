-- 영화 페이지 만들기
-- title, genre, runtime, releaseDate, director, actor

USE mydb3;
CREATE TABLE Movie(
	movieID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    runtime CHARACTER(45) DEFAULT 0,
    releaseDate CHARACTER(45)
);
CREATE TABLE Genre(
	genreID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL
);

CREATE TABLE MovieGenre(
	movieID INT NOT NULL,
    genreID INT NOT NULL,
    
    FOREIGN KEY (movieID) REFERENCES Movie(movieID),
    FOREIGN KEY (genreID) REFERENCES Genre(genreID),
    PRIMARY KEY (movieID, genreID) 
    );
    
    CREATE TABLE Director(
		directorID INT PRIMARY KEY NOT NULL,
        name VARCHAR(255) NOT NULL
    );
    CREATE TABLE MovieDirector(
		movieID INT NOT NULL,
        directorID INT NOT NULL,
        PRIMARY KEY(movieID, directorID),
        FOREIGN KEY(movieID) REFERENCES Movie (movieID),
        FOREIGN KEY(directorID) REFERENCES Director(directorID)
    );
    
    CREATE TABLE Actor(
		actorID INT PRIMARY KEY NOT NULL,
        name VARCHAR(255) NOT NULL
    );
    
    CREATE TABLE MovieActor(
		movieID INT NOT NULL,
        actorID INT NOT NULL,
        PRIMARY KEY (movieID, actorID),
        FOREIGN KEY(movieID) REFERENCES Movie(movieID),
        FOREIGN KEY(actorID) REFERENCES Actor(actorID)
    );
    
    
    
    
    
    
    
    