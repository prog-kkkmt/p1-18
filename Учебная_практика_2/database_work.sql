INSERT INTO "tasks" ("name", files)
VALUES 
('Волков Максим Александрович', 'файл 1' ),
('Жмышенко Альберд Валерьевич', 'файл 2' ),
('Волков Максим Александрович', 'файл 3' ),
('Жмышенко Альберд Валерьевич', 'файл 4' ),
('Батраков Данила Сергеевич', 'файл 5');

INSERT INTO "groups" ("github_id", "name")
VALUES
(52, 'П1-18'),
(65, 'П2-18');

INSERT INTO "students" ("name", "branch")
VALUES
('Волков Максим Александрович', 'Volkov' ),
('Жмышенко Альберд Валерьевич', 'Lanode');

SELECT * FROM "students", "groups", "tasks";

﻿UPDATE "tasks"
SET "name" = 'Ларченко Михаил Андреевич'
WHERE id = 3

UPDATE "tasks"
SET "name" = 'Денисов Матвей Валерьевич'
WHERE id = 4

﻿DELETE FROM "tasks"
WHERE "files" = 'файл 5';
