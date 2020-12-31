FROM graphile/postgraphile

RUN yarn add --production=true @graphile-contrib/pg-simplify-inflector postgraphile-plugin-connection-filter
