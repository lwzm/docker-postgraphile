FROM graphile/postgraphile

RUN yarn add --production=true postgraphile-plugin-connection-filter
