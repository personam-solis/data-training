-- Create schema
CREATE SCHEMA IF NOT EXISTS people AUTHORIZATION imdb;
CREATE SCHEMA IF NOT EXISTS media AUTHORIZATION imdb;

-- Add tables to schema (By default the DB has all of them in public)
ALTER TABLE "aka_name" SET SCHEMA people;
ALTER TABLE "cast_info" SET SCHEMA people;
ALTER TABLE "char_name" SET SCHEMA people;
ALTER TABLE "comp_cast_type" SET SCHEMA people;
ALTER TABLE "company_name" SET SCHEMA people;
ALTER TABLE "company_type" SET SCHEMA people;
ALTER TABLE "complete_cast" SET SCHEMA people;
ALTER TABLE "name" SET SCHEMA people;
ALTER TABLE "person_info" SET SCHEMA people;
ALTER TABLE "role_type" SET SCHEMA people;

ALTER TABLE "title" SET SCHEMA media;
ALTER TABLE "movie_info" SET SCHEMA media;
ALTER TABLE "movie_companies" SET SCHEMA media;
ALTER TABLE "keyword" SET SCHEMA media;
ALTER TABLE "movie_link" SET SCHEMA media;
ALTER TABLE "info_type" SET SCHEMA media;
ALTER TABLE "link_type" SET SCHEMA media;
ALTER TABLE "kind_type" SET SCHEMA media;
ALTER TABLE "movie_keyword" SET SCHEMA media;
ALTER TABLE "aka_title" SET SCHEMA media;
ALTER TABLE "movie_info_idx" SET SCHEMA media;