-- Ограничения CHECK
ALTER TABLE Num_Of_Release ADD CONSTRAINT chk_num_of_publication CHECK (Num_Of_Publication > 0);
ALTER TABLE Publication ADD CONSTRAINT chk_number_of_releases CHECK (Number_Of_Releases >= 0);

-- Внешние ключи
ALTER TABLE Article ADD CONSTRAINT fk_article_author FOREIGN KEY (Author_ID) REFERENCES Author(ID);
ALTER TABLE Num_Of_Release ADD CONSTRAINT fk_num_of_release_publication FOREIGN KEY (Publication_ID) REFERENCES Publication(ID);
ALTER TABLE Publication ADD CONSTRAINT fk_publication_publishing_house FOREIGN KEY (Publishing_House_ID) REFERENCES Publishing_House(ID);
ALTER TABLE Publication_Of_Article ADD CONSTRAINT fk_pof_article FOREIGN KEY (Article_ID) REFERENCES Article(ID);
ALTER TABLE Publication_Of_Article ADD CONSTRAINT fk_pof_num_of_release FOREIGN KEY (Num_Of_Release_ID) REFERENCES Num_Of_Release(ID);
