select cor.title, cor.description, lev."name" as "level", concat(tea.first_name, ' ', tea.last_name) as teacher, corvi.title as title_video, corvi.url, cat."name" as category 
	from courses as cor
	inner join levels as lev on cor.id_level = lev.id_level 
	inner join teachers as tea on cor.id_teacher = tea.id_teacher
	inner join courses_videos as corvi on cor.id_course_video = corvi.id_course_video 
	inner join categories as cat on cor.id_category = cat.id_category;
	