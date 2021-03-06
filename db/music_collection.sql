DROP TABLE IF EXISTS Albums;
DROP TABLE IF EXISTS Artists;

CREATE TABLE Artists (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR (255)
);


CREATE TABLE Albums (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255),
  artist_id INT4 REFERENCES artist(id)
);
