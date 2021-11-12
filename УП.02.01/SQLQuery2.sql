INSERT INTO "groups" ("github_id", "name")
VALUES
(52, 'П1-18'),
(65, 'П2-18')

INSERT INTO "students" ("name", "branch")
VALUES
('Волков Максим Александрович', 'Volkov' ),
('Жмышенко Альберд Валерьевич', 'Lanode')

SELECT * FROM "students", "groups";