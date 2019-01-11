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
insert into users (username, password, profile_pic)
values('k', 'k', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAMAAACahl6sAAAAMFBMVEX////W1ta1tbX8/Pz19fXq6urb29vl5eXg4ODt7e3w8PDU1NS+vr7Ozs7GxsbCwsImuh8oAAAE/0lEQVR4nO2d26KrIAxE66313v//2yOiVhQVIe0k+7Ce9wOzk0kCon08IpFIJBKJRCISyfK6+JDnGXpBHuTVq0z2PF+FJDl58bSIWCgrEVqy6lTFpKVGL/OKrLhWoZOMt5TaUcYoJUev9pDsdUPHQMHUK7mDOUxKlkG5k1YLDJV46UgSdp731MEuJrmvDmZKsts+/1Byql03667JC736D1WIDkaGz8J0JE8uyRWUWIoCrUATGpABHiEJDgiTkBAEhEdICAKSJBVaBVFAkidaRnAPmcEPKrbDEg/gdg+YFg3gueV62HAJOreIMgtet2hqlqLECvHeGO7BCiHphhqsSQJ2hlugJqGzCHijSGgRrNvJuogCKYSsiyiQozylDmTZovQ6tGxRTYwa4ABMtBeZANZf0qKFrL+EAwpWCGn1RTYSWh1RCDshsNZO20aArT0K4SaEtrEDhdA29igkCvl7QmhnRqAQ4pkxColCopD/RQhsjKcWgtIRhbATQt3ZYUKIZy3cuVYUYgd39ku8Z8edxhMLwT0foX3Og3xiRSsE+AyRtiPidNB2RORzdtL6i7z5QHnxAXoZkLRsQW8HUQqB3mEmdDv2dibheTz2dRjCIQX8NgzdDTrwNX8yk6AvMJN1EviVcioh8BfGqHILrYMqtxi8i0gjBH3F/0E0AaNrloJkcITXLAWF3Tm89EYxpjCwuiJ8587A6orgCgx+B+ZD6OTIJCDBIWHiEEWYS1iULE1Q4WLRQ2ZCQsIoIEHtncF702u8Jy42pXfCOyRsSu+MZwlm5XSN1+zI5kMiK7ySi11iKTySi2FiKW5XLm4Va+Hm8NgwGrJMsuaWjhZ/BnRA3txR0qY9esFHVEnnruSdpinD4jsytJK3qxKlI+VqkmF9XeukpBl1pB16xXbGXUmfdg462lTDM7d0Hxk8fKWjS2d45tb0307T8/Sa0opvbs0jivp/n3j+Ew4Fx2Fr6et9eiil6VMThj1xNTPq3Gn7je2b7p1uadnZ3fh25rLgtu87Td+2OxUKDg8UDIzRt7Ev2gqzkGxOtpp9Eh3RoJdusP8oq7sSVudBlgO6bX06hJPfrQcP3bUGDZ+ueHCA4mx5JpXr5CPrrunFYvOenR1gO1WvtsNf4Lh+onAlpe3HWQatxOWnFJr+0Cvte5lisAO965lcZ9OymcWAX/Wv75xjNV0/jFujnrZ9DxPY/k8wP7Xg9DMjd6l/LSWrqd8Tm/llVL6nYqQsfmGWrC6oXz608d2fJPqRiJlnWdT0cn4sYkVZVGRycpSIBfXzV6EqvuvsO7wCinPORoXm5SelRmeUBQ8ptwaQH3Jzi58zjMbEraBQf0yHFPc5+XTTxwFHJYzTasZJCfUH2b6Cg0+IX4n+Ete/GcXeHxOXe3xmvfyYi3MX6g/9fY/zq14yDKI5vSMlxCCak5CIqLwLJ35nOicecRgS0vfsf8BhSIQF5DAkshyiONibiOmFC/ZHXZJ6yIx1Cma9mTrA2hTFWT2x55Y8qyssuSUxs6y5JTGzbLfSJdYsxa4nytmImOz2V/K6oWY3b6EX5Mu2AMssvoqNSWQWX8XGJKL2uAabToJejj9mJ5Frkc2nYaR2EYUxbkntIgpjmyjX62ZLlDpojazdLtnrhtvltkPFyu2SvW64Hb2UMD5uF+31tdulnflu+SNeX7ldcjtUVH/DIh+3y26HybTd/QfT9FhXABY1XQAAAABJRU5ErkJggg==
')

insert into posts (title, img, content, author_id)
values ('Hello World', 'https://upload.wikimedia.org/wikipedia/commons/d/d7/Post-It.jpg', 'This is a post', 1);

insert into posts (title, img, content, author_id)
values ('Hola', 'https://t3.ftcdn.net/jpg/00/23/97/46/500_F_23974661_EV0wX7nI5bOvyjwjxrhA5Kjxi0K9jrNn.jpg', 'Asi es', 2);