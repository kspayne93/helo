-- CREATE USERS TABLE
CREATE TABLE users (
   id SERIAL PRIMARY KEY,
   username VARCHAR(20),
   password VARCHAR(20),
   profile_pic TEXT
);

-- CREATE POSTS TABLE
CREATE TABLE posts (
   id SERIAL PRIMARY KEY,
   title VARCHAR(45),
   img TEXT,
   content TEXT,
   author_id INTEGER references users (id)
);


-- INSERTING DUMMY DATA
insert into posts (title, img, content, author_id)
values ('Hello World', 'https://upload.wikimedia.org/wikipedia/commons/d/d7/Post-It.jpg', 'This is a post', 1);

insert into posts (title, img, content, author_id)
values ('Hola', 'https://t3.ftcdn.net/jpg/00/23/97/46/500_F_23974661_EV0wX7nI5bOvyjwjxrhA5Kjxi0K9jrNn.jpg', 'Asi es', 2);