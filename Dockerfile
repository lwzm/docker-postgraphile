FROM graphile/postgraphile

RUN yarn add --production=true \
    @graphile-contrib/pg-simplify-inflector \
    @graphile-contrib/pg-many-to-many \
    postgraphile-plugin-connection-filter

