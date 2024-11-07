-- Поиск всех изданий по издательству
SELECT Publication.Name AS "Название издания", Publishing_House.Name AS "Название издательства"
FROM Publication
JOIN Publishing_House ON Publication.Publishing_House_ID = Publishing_House.ID;

-- Поиск всех изданий, в который печатается указанный автор
SELECT DISTINCT Author.Surname, Author.Name, Author.Fathername, Publication.Name AS "Название издания"
FROM Article
JOIN Author ON Article.Author_ID = Author.ID
JOIN Publication_Of_Article ON Article.ID = Publication_Of_Article.Article_ID
JOIN Num_Of_Release ON Publication_Of_Article.Num_Of_Release_ID = Num_Of_Release.ID
JOIN Publication ON Num_Of_Release.Publication_ID = Publication.ID;

-- Подсчет числа статей, написанных авторами за указанный срок
SELECT Author.Surname, Author.Name, Author.Fathername, COUNT(Article.ID) AS "Количество статей"
FROM Article
JOIN Author ON Article.Author_ID = Author.ID
JOIN Publication_Of_Article ON Article.ID = Publication_Of_Article.Article_ID
JOIN Num_Of_Release ON Publication_Of_Article.Num_Of_Release_ID = Num_Of_Release.ID
GROUP BY Author.Surname, Author.Name, Author.Fathername;

-- Подсчет авторов с наибольшим количеством статей
SELECT Author.Surname, Author.Name, Author.Fathername, COUNT(Article.ID) AS "Количество статей"
FROM Author
JOIN Article ON Author.ID = Article.Author_ID
GROUP BY Author.Surname, Author.Name, Author.Fathername
HAVING COUNT(Article.ID) = (
    SELECT MAX("Количество статей")
    FROM (
        SELECT COUNT(ID) AS "Количество статей"
        FROM Article
        GROUP BY Author_ID
    ) AS Subquery
);