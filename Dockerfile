FROM alpine

EXPOSE 80
ENV NODE_ENV=production
ENTRYPOINT [ "./entrypoint" ]

RUN apk add --no-cache npm
RUN npm install -g --production \
    postgraphile@v4.12.11 \
    @graphile-contrib/pg-simplify-inflector \
    @graphile-contrib/pg-many-to-many \
    postgraphile-plugin-connection-filter \
    && npm cache clean --force

COPY entrypoint .
