CREATE DATABASE IF NOT EXISTS PoemBlog;
USE PoemBlog;

CREATE TABLE Poem (
	Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Title VARCHAR(100) NOT NULL,
    PoemContent MEDIUMTEXT NOT NULL,
    UploadedOn DATETIME DEFAULT NOW(),
    Likes INT DEFAULT 0
);

CREATE TABLE Comment (
	Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PoemId INT,
    CommentText TEXT NOT NULL,
    CreatedOn DATETIME DEFAULT NOW(),
    FOREIGN KEY (PoemId) REFERENCES Poem(Id)
);

INSERT INTO Poem (Title, PoemContent, UploadedOn, Likes) VALUES ('Poem 1','Poem1 sample content', '2020-03-12',10);
INSERT INTO Poem (Title, PoemContent) VALUES ('Poem 2','Poem2 sample content');

INSERT INTO Comment(PoemId, CommentText) VALUES (1, 'Sample comment 1');
INSERT INTO Comment(PoemId, CommentText) VALUES (1, 'Sample comment 2');