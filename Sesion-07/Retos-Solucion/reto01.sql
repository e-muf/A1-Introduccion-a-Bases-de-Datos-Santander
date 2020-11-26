create database if not exists bedu_movies;

use bedu_movies;

create table if not exists users (
  id int primary key,
  genero char(1),
  edad int,
  ocupacion int,
  cp varchar(20)
);

create table if not exists movies (
  id int primary key,
  title varchar(60),
  genres varchar(80)
);

create table if not exists ratings (
  id int primary key auto_increment,
  user_id int,
  movie_id int,
  rating int,
  date_rating int,
  constraint ratings_user_id_fk foreign key (user_id)
  references users(id),
  constraint ratings_movie_id_fk foreign key (movie_id)
  references movies(id)
);