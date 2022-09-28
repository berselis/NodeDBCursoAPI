CREATE TABLE "users" (
  "id_user" uuid PRIMARY KEY NOT NULL,
  "user_name" varchar NOT NULL,
  "password" varchar NOT NULL,
  "email" varchar NOT NULL,
  "age" int NOT NULL,
  "created_at" timestamp NOT NULL,
  "id_statu" int NOT NULL,
  "id_rol" int NOT NULL
);

CREATE TABLE "users_courses" (
  "id_user_course" SERIAL PRIMARY KEY,
  "id_user" uuid NOT NULL,
  "id_course" uuid NOT NULL
);

CREATE TABLE "courses" (
  "id_course" uuid PRIMARY KEY NOT NULL,
  "title" varchar(50) NOT NULL,
  "description" varchar NOT NULL,
  "id_level" int NOT NULL,
  "id_teacher" int NOT NULL,
  "id_course_video" int NOT NULL,
  "id_category" int NOT NULL
);

CREATE TABLE "teachers" (
  "id_teacher" SERIAL PRIMARY KEY,
  "first_name" varchar(50) NOT NULL,
  "last_name" varchar(50) NOT NULL
);

CREATE TABLE "courses_videos" (
  "id_course_video" SERIAL PRIMARY KEY,
  "title" varchar(50) NOT NULL,
  "url" varchar NOT NULL
);

CREATE TABLE "categories" (
  "id_category" SERIAL PRIMARY KEY,
  "name" varchar(50) NOT NULL
);

CREATE TABLE "roles" (
  "id_rol" SERIAL PRIMARY KEY,
  "name" varchar(50) NOT NULL
);

CREATE TABLE "status" (
  "id_statu" SERIAL PRIMARY KEY,
  "code" varchar(20) NOT NULL,
  "description" varchar NOT NULL
);

CREATE TABLE "levels" (
  "id_level" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "users" ADD FOREIGN KEY ("id_rol") REFERENCES "roles" ("id_rol");

ALTER TABLE "users" ADD FOREIGN KEY ("id_statu") REFERENCES "status" ("id_statu");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id_user");

ALTER TABLE "users_courses" ADD FOREIGN KEY ("id_course") REFERENCES "courses" ("id_course");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_level") REFERENCES "levels" ("id_level");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_teacher") REFERENCES "teachers" ("id_teacher");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_course_video") REFERENCES "courses_videos" ("id_course_video");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_category") REFERENCES "categories" ("id_category");
