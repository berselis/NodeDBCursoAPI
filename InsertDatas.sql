--DATA FOR LEVELS OF COURSES
insert into levels ("name") values ('Beginner');
insert into levels ("name") values ('Intermediate');
insert into levels ("name") values ('Advance');

--DATA FOR CATEGORIES OF COURSES
insert into categories ("name") values('Databases');
insert into categories ("name") values('Development');
insert into categories ("name") values('Algorithms');
insert into categories ("name") values('Design');

--DATA FOR ROLES OF USER'S ACCESS
insert into roles ("name") values('student');
insert into roles ("name") values('teacher');
insert into roles ("name") values('admin');

--DATA FOR CODES OF USERS'S STATUS
insert into status (code, description) values('ACT', 'when user are active to access');
insert into status (code, description) values('DIS', 'when user are disabled to access');
insert into status (code, description) values('DEL', 'when user are deleted by admin');

--DATA FOR URL VIDEOS
insert into courses_videos (title, url) values ('Intro to Databases', 'https://www.youtube.com/watch?v=Zc14ZkWVhhs');
insert into courses_videos (title, url) values ('My Visual Studio Code Setup for Web Development', 'https://www.youtube.com/watch?v=H2gvHxC9gFY');
insert into courses_videos (title, url) values ('Algorithms and Data Structures Tutorial', 'https://www.youtube.com/watch?v=8hly31xKli0');
insert into courses_videos (title, url) values ('Web Design Tutorial - 5 IMPORTANT Tips!', 'https://www.youtube.com/watch?v=z-xkbNLIB5w');

--TEACHER REGISTERS
insert into teachers (first_name, last_name) values('Franco', 'Richarson');
insert into teachers (first_name, last_name) values('Juan', 'Mendez');
insert into teachers (first_name, last_name) values('Melende', 'Melenciano');

--COURSES REGISTERS
insert into courses (id_course, title, description, id_level, id_teacher, id_course_video, id_category) 
		values('d0c91a88-2f00-4aac-9b09-897282beaa20', 'Databases fundamentals', 'text of description later', 1, 1, 1, 1);	
insert into courses (id_course, title, description, id_level, id_teacher, id_course_video, id_category) 
		values('02e750da-bbbe-4f7e-a96f-dccd3b27a6fc', 'Condepts of Developments', 'text of description later', 1, 2, 2, 2);	
insert into courses (id_course, title, description, id_level, id_teacher, id_course_video, id_category) 
		values('e6ec17e5-62f5-4611-ac10-22042625f7da', 'Data Structure', 'text of description later', 1, 3, 3, 3);
insert into courses (id_course, title, description, id_level, id_teacher, id_course_video, id_category) 
		values('bd213c91-5748-4e0e-9d62-a091a457744a', 'First web design', 'text of description later', 1, 2, 4, 4);
	
--USERS REGISTER
insert into users (id_user, user_name, "password", email, age, created_at, id_statu, id_rol)
		values('db582fae-ad1b-4ac0-a05f-9eb5783405d3', 'berselis', '#$%^&r456tyu$%^&g787hjk', 'correo@correo.com', 35, now(), 1, 1);
insert into users (id_user, user_name, "password", email, age, created_at, id_statu, id_rol)
		values('966ccfd7-a779-4653-a821-080b45b4bf25', 'juan', '#$%^741&rtyu$%^&ghjk', 'correo@correo.com', 25, now(), 1, 1);
insert into users (id_user, user_name, "password", email, age, created_at, id_statu, id_rol)
		values('e78f45c9-0af3-46e4-8398-dab673fa6c1e', 'pepito', '#$%^&rt454yu$%^&ghjk', 'correo@correo.com', 20, now(), 1, 1);
insert into users (id_user, user_name, "password", email, age, created_at, id_statu, id_rol)
		values('119b9590-a1c9-4103-aaff-796c8f7f99ab', 'JulioProfe', '#$%^&rtyu$%^&ghjk', 'correo@correo.com', 40, now(), 1, 2);
insert into users (id_user, user_name, "password", email, age, created_at, id_statu, id_rol)
		values('d2a47b9b-4906-4a66-ba0f-c5746554ba00', 'MelendeProfe', '#$%^&789rtyu$%^&ghjk', 'correo@correo.com', 45, now(), 1, 2);
insert into users (id_user, user_name, "password", email, age, created_at, id_statu, id_rol)
		values('30852f0d-44f4-431c-9e7f-979f246e2702', 'FrancoProfe', '#$%^&r789tyu$%^&ghjk', 'correo@correo.com', 50, now(), 1, 2);
insert into users (id_user, user_name, "password", email, age, created_at, id_statu, id_rol)
		values('0a3118de-b83e-4fa5-8e39-9c2ceb1b43c7', 'administrator', '#$%^&r321tyu$%^&ghjk', 'correo@correo.com', 999, now(), 1, 3);


insert into users_courses (id_user, id_course, progress, review)
	values('db582fae-ad1b-4ac0-a05f-9eb5783405d3','d0c91a88-2f00-4aac-9b09-897282beaa20', 50, 'best course');
insert into users_courses (id_user, id_course, progress, review)
	values('db582fae-ad1b-4ac0-a05f-9eb5783405d3','02e750da-bbbe-4f7e-a96f-dccd3b27a6fc', 45, 'best course');
insert into users_courses (id_user, id_course, progress, review)
	values('db582fae-ad1b-4ac0-a05f-9eb5783405d3','e6ec17e5-62f5-4611-ac10-22042625f7da', 60, 'best course');
insert into users_courses (id_user, id_course, progress, review)
	values('db582fae-ad1b-4ac0-a05f-9eb5783405d3','bd213c91-5748-4e0e-9d62-a091a457744a', 100, 'best course');

insert into users_courses (id_user, id_course, progress, review)
	values('966ccfd7-a779-4653-a821-080b45b4bf25','d0c91a88-2f00-4aac-9b09-897282beaa20', 10, 'best course');
insert into users_courses (id_user, id_course, progress, review)
	values('966ccfd7-a779-4653-a821-080b45b4bf25','02e750da-bbbe-4f7e-a96f-dccd3b27a6fc', 0, 'best course');
insert into users_courses (id_user, id_course, progress, review)
	values('966ccfd7-a779-4653-a821-080b45b4bf25','e6ec17e5-62f5-4611-ac10-22042625f7da', 60, 'best course');
insert into users_courses (id_user, id_course, progress, review)
	values('966ccfd7-a779-4653-a821-080b45b4bf25','bd213c91-5748-4e0e-9d62-a091a457744a', 70, 'best course');

insert into users_courses (id_user, id_course, progress, review)
	values('e78f45c9-0af3-46e4-8398-dab673fa6c1e','d0c91a88-2f00-4aac-9b09-897282beaa20', 20, 'best course');
insert into users_courses (id_user, id_course, progress, review)
	values('e78f45c9-0af3-46e4-8398-dab673fa6c1e','02e750da-bbbe-4f7e-a96f-dccd3b27a6fc', 33, 'best course');
insert into users_courses (id_user, id_course, progress, review)
	values('e78f45c9-0af3-46e4-8398-dab673fa6c1e','e6ec17e5-62f5-4611-ac10-22042625f7da', 85, 'best course');
insert into users_courses (id_user, id_course, progress, review)
	values('e78f45c9-0af3-46e4-8398-dab673fa6c1e','bd213c91-5748-4e0e-9d62-a091a457744a', 90, 'best course');


	
		
		
