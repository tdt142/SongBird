/*****************************************
* Create the song_bird database
*****************************************/
DROP DATABASE IF EXISTS song_bird;
CREATE DATABASE song_bird;
USE song_bird;  -- MySQL command

-- create the tables
CREATE TABLE categories (
  categoryID       INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryName     VARCHAR(255)   NOT NULL,
  PRIMARY KEY (categoryID)
);

CREATE TABLE songs (
  songID        INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryID       INT(11)        NOT NULL,
  songCode      VARCHAR(10)    NOT NULL   UNIQUE,
  songName      VARCHAR(255)   NOT NULL,
  songSinger	VARCHAR(255)   NOT NULL,
  PRIMARY KEY (songID)
);

CREATE TABLE review (
  reviewID        INT(11)        NOT NULL   AUTO_INCREMENT,
  songID     INT          NOT NULL,
  reviewDate      DATETIME       NOT NULL,
  reviewContent   VARCHAR(255)  NOT NULL,
  PRIMARY KEY (reviewID)
);

-- insert data into the database
INSERT INTO categories VALUES
(1, 'Popular'),
(2, 'EDM'),
(3, 'Classical'),
(4,'Country'),
(5,'Pop'),
(6,'Hip-Hop'),
(7,'Soul'),
(8,'Rap'),
(9,'Folk'),
(10,'Jazz'),
(11,'Rock'),
(12,'Heavy Metal');

INSERT INTO songs VALUES
(1, 1, 's1', 'Song 1', 'Artist 1'),
(2, 1, 's2', 'Song 2', 'Artist 2'),
(3, 2, 's3', 'Song 1', 'Artist 1'),
(4, 2, 's4', 'Song 2', 'Artist 2'),
(5, 3, 's5', 'Song 1', 'Artist 1'),
(6, 3, 's6', 'Song 2', 'Artist 2'),
(7, 4, 's7', 'Song 1', 'Artist 1'),
(8, 4, 's8', 'Song 2', 'Artist 2'),
(9, 5, 's9', 'Song 1', 'Artist 1'),
(10, 5, 's10', 'Song 2', 'Artist 2'),
(11, 6, 's11', 'Song 1', 'Artist 1'),
(12, 6, 's12', 'Song 2', 'Artist 2'),
(13, 7, 's13', 'Song 1', 'Artist 1'),
(14, 7, 's14', 'Song 2', 'Artist 2'),
(15, 8, 's15', 'Song 1', 'Artist 1'),
(16, 8, 's16', 'Song 2', 'Artist 2'),
(17, 9, 's18', 'Song 1', 'Artist 1'),
(18, 9, 's19', 'Song 2', 'Artist 2'),
(19, 10, 's20', 'Song 1', 'Artist 1'),
(20, 10, 's21', 'Song 2', 'Artist 2'),
(21, 11, 's22', 'Song 1', 'Artist 1'),
(22, 11, 's23', 'Song 2', 'Artist 2'),
(23, 12, 's24', 'Song 1', 'Artist 1'),
(24, 12, 's25', 'Song 2', 'Artist 2');

-- create the users and grant priveleges to those users
GRANT SELECT, INSERT, DELETE, UPDATE
ON song_bird.*
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';

GRANT SELECT
ON songs
TO mgs_tester@localhost
IDENTIFIED BY 'pa55word';

