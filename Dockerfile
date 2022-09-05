FROM alpine

EXPOSE 80
ENTRYPOINT [ "./entrypoint" ]

RUN apk add --no-cache nodejs npm \
    && npm install -g --production \
        postgraphile@v4.12.11 \
        @graphile-contrib/pg-simplify-inflector \
        @graphile-contrib/pg-many-to-many \
        postgraphile-plugin-connection-filter \
    && npm cache clean --force \
    && apk del npm

COPY entrypoint .
