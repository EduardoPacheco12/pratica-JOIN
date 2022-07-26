--Questão 1

SELECT users.id, users.name, cities.name as city 
FROM users
JOIN cities
ON users."cityId" = cities.id
WHERE cities.name = 'Rio de Janeiro'
ORDER BY id ASC

--Questão 2

SELECT testimonials.id, w.name as writer, r.name as recipient, testimonials.message 
FROM testimonials
JOIN users w 
ON testimonials."writerId" = w.id
JOIN users r
ON testimonials."recipientId" = r.id
ORDER BY id ASC

--Questão 3

SELECT users.id, users.name, courses.name as course, schools.name as school, educations."endDate"
FROM educations
JOIN users
ON educations."userId" = users.id
JOIN courses
ON educations."courseId" = courses.id
JOIN schools
ON educations."schoolId" = schools.id
WHERE educations."userId" = 30 AND educations.status = 'finished'

--Questão 4

SELECT users.id, users.name, roles.name as role, companies.name as company, experiences."startDate" 
FROM experiences
JOIN users
ON experiences."userId" = users.id
JOIN companies
ON experiences."companyId" = companies.id
JOIN roles
ON experiences."roleId" = roles.id
WHERE experiences."userId" = 50 AND experiences."endDate" IS NULL