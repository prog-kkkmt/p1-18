CREATE DATABASE "KKMT.Tasks";

CREATE TABLE "tasks"
(
  "id"  INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(64) NOT NULL,
  "files" text NOT NULL
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

CREATE TABLE "given_tasks"
(
  "task_id" INTEGER,
  "group_id" INTEGER,
  FOREIGN KEY ("task_id") REFERENCES "tasks" ("id") ON DELETE CASCADE,
  FOREIGN KEY ("group_id") REFERENCES "groups" ("id") ON DELETE CASCADE
);

CREATE OR REPLACE PROCEDURE CompleteTask(StudentId INTEGER, TaskId INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "completed_tasks" 
        ("task_id", "student_id")
    VALUES
        (@TaskId, @StudentId);
end; $$

CREATE OR REPLACE PROCEDURE GiveTask(GroupId INTEGER, TaskId INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "given_tasks" 
        ("task_id", "group_id")
    VALUES
        (@TaskId, @GroupId);
end; $$
