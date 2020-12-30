# docker-postgraphile

Copy of `graphile/postgraphile`, with additional `filter` plugin.

```
docker run lwzm/postgraphile -c postgres://postgres:xxxx@postgres/ --append-plugins postgraphile-plugin-connection-filter
```
