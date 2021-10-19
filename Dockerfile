FROM node:14-alpine

EXPOSE 80

ENTRYPOINT [ "./entrypoint" ]

RUN yarn global add --production=true \
    postgraphile \
    @graphile-contrib/pg-simplify-inflector \
    @graphile-contrib/pg-many-to-many \
    postgraphile-plugin-connection-filter \
    && yarn cache clean
COPY entrypoint .
