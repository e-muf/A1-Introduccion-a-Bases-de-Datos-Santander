# Retos Sesión 3 Solucionados

## Reto 1

1. Definir los campos y tipos de datos para la tabla movies haciendo uso de los archivos movies.dat y README.

Campo | Tipo
|-----|-----|
id | int
title | varchar
genres | varchar

2. Crear la tabla movies (recuerda usar el mismo nombre del archivo sin la extensión para vincular nombres de tablas con archivos).

```sql
create table if not exists movies (
  id int primary key,
  title varchar(60),
  genres varchar(80)
);
```

3. Definir los campos y tipos de datos para la tabla ratings haciendo uso de los archivos ratings.dat y README.

Campo | Tipo
|-----|-----|
id    | int
user_id | int
movie_id | int
rating | int
date_rating | int

4. Crear la tabla ratings (recuerda usar el mismo nombre del archivo sin la extensión para vincular nombres de tablas con archivos)

```sql
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
```


