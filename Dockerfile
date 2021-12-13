FROM node:16-alpine

EXPOSE 80
ENV NODE_ENV=production
ENTRYPOINT [ "./entrypoint" ]

RUN yarn global add --production=true \
    postgraphile \
    @graphile-contrib/pg-simplify-inflector \
    @graphile-contrib/pg-many-to-many \
    postgraphile-plugin-connection-filter \
    && yarn cache clean
COPY entrypoint .
