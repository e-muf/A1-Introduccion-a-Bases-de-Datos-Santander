# Retos Sesión 4 Solucionados

## Reto 1: Colecciones Documentos y Proyecciones

- Fecha, nombre y texto de cada comentario.

```json
{
  date: 1,
  name: 1,
  text: 1
}
```

![consulta1](./img/reto01_1.png)

- Título, elenco y año de cada película.

```json
{
  title: 1,
  cast: 1,
  year: 1
}

```

![consulta2](./img/reto01_2.png)

- Nombre y contraseña de cada usuario.

```json
{
 name: 1,
 password: 1
}
```

![consulta3](./img/reto01_3.png)

## Reto 2: Filtros Básicos

- ¿Qué comentarios ha hecho Greg Powell?

```json
{
  name: 'Greg Powell'
}
```
![consulta1](./img/reto02_1.png)

- ¿Qué comentarios han hecho Greg Powell o Mercedes Tyler?
```json
{
  $or: [
    {
      name: 'Greg Powell'
    },
    {
      name: 'Mercedes Tyler'
    }
  ]
}
```
![consulta2](./img/reto02_2.png)

- ¿Cuál es el máximo número de comentarios en una película?

```json
{
  project: {
    num_mflix_comments: 1
  },
  sort: {
    num_mflix_comments: -1
  },
  limit: 1
}
```
![consulta3](./img/reto02_3.png)

- ¿Cuál es el título de las cinco películas más comentadas?

```json
{
  project: {
    title: 1
  },
  sort: {
    num_mflix_comments: -1
  },
  limit: 5
}
```
![consulta4](./img/reto02_4.png)
