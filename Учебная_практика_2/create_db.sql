CREATE TABLE "tasks"
(
  "id"  INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(64) NOT NULL,
  "files" varchar(128) NOT NULL
);

CREATE TABLE "groups"
(
  "id"  INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "github_id" INTEGER,
  "name" varchar(64) NOT NULL,
  "task_id" INTEGER,
  FOREIGN KEY ("task_id") REFERENCES "tasks" ("id") ON DELETE CASCADE
);

CREATE TABLE "students"
(
  "id"  INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(64) NOT NULL,
  "branch" varchar(128) NOT NULL,
  "group_id" INTEGER,
  FOREIGN KEY ("group_id") REFERENCES "groups" ("id") ON DELETE CASCADE
);

CREATE TABLE "completed_tasks"
(
  "task_id" INTEGER,
  "student_id" INTEGER,
  FOREIGN KEY ("task_id") REFERENCES "tasks" ("id") ON DELETE CASCADE,
  FOREIGN KEY ("student_id") REFERENCES "students" ("id") ON DELETE CASCADE
);