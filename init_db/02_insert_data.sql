INSERT INTO Article (ID, Author_ID, Name) VALUES
(0, 0, 'Поведение свободноживущих шимпанзе в резервации Гомбе'),
(1, 3, 'О новом радиоактивном веществе, содержащемся в урановой руде'),
(2, 1, 'Молекулярная конфигурация в натриевом тимонуклеате'),
(3, 2, 'К электродинамике движущихся тел'),
(4, 4, 'Принцип наименьшего действия в квантовой механике');

INSERT INTO Author (ID, Surname, Name, Fathername) VALUES
(0, 'Гудолл', 'Джейн', NULL),
(1, 'Франклин', 'Розалинд', NULL),
(2, 'Эйнштейн', 'Альберт', NULL),
(3, 'Кюри', 'Мари', NULL),
(4, 'Фейнман', 'Ричард', NULL);

INSERT INTO Num_Of_Release (ID, Publication_ID, Num_Of_Publication, Date) VALUES
(0, 0, 1, '2001-01-01 00:00:00'),
(1, 0, 2, '2001-02-01 00:00:00'),
(2, 1, 1, '2001-01-15 00:00:00'),
(3, 2, 1, '2001-01-10 00:00:00'),
(4, 2, 2, '2001-03-10 00:00:00'),
(5, 3, 1, '2002-01-20 00:00:00'),
(6, 4, 1, '2010-01-10 00:00:00'),
(7, 4, 2, '2010-01-20 00:00:00'),
(8, 4, 3, '2010-01-30 00:00:00'),
(9, 5, 1, '2022-01-18 00:00:00');

INSERT INTO Publication (ID, Name, Publishing_House_ID, Number_Of_Releases) VALUES
(0, 'Nature', 0, 12),
(1, 'The Lancet', 1, 12),
(2, 'Advanced Materials', 2, 6),
(3, 'Journal of Applied Psychology', 19, 6),
(4, 'American Journal of Sociology', 20, 36),
(5, 'IEEE Transactions on Neural Networks and Learning Systems', 21, 24);

INSERT INTO Publication_Of_Article (Article_ID, Num_Of_Release_ID) VALUES
(0, 0),
(0, 7),
(1, 1),
(1, 3),
(2, 4),
(3, 0),
(3, 4),
(4, 9);

INSERT INTO Publishing_House (ID, Name) VALUES
(0, 'Springer Nature'),
(1, 'Elsevier'),
(2, 'Wiley'),
(19, 'Taylor & Francis'),
(20, 'SAGE Publications'),
(21, 'IEEE (Institute of Electrical)');
