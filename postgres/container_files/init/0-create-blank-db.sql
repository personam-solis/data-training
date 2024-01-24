-- Delete the database if it exists, then create an empty one
-- The imdb role was the role used when the dump was created so create a group.

CREATE ROLE imdb INHERIT;
GRANT imdb TO postgres;
DROP DATABASE IF EXISTS imdbdata;
CREATE DATABASE imdbdata OWNER postgres;
