FROM graphile/postgraphile as base

FROM node:12-alpine

COPY --from=base /postgraphile/ /postgraphile/

WORKDIR /postgraphile/
EXPOSE 80

ENTRYPOINT [ "./cli.js", "--watch", "--dynamic-json", "--enhance-graphiql", "--port", "80", \
             "--append-plugins", "@graphile-contrib/pg-simplify-inflector,@graphile-contrib/pg-many-to-many,postgraphile-plugin-connection-filter" ]

RUN yarn add --production=true \
    @graphile-contrib/pg-simplify-inflector \
    @graphile-contrib/pg-many-to-many \
    postgraphile-plugin-connection-filter \
    && yarn cache clean
