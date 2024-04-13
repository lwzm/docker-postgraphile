FROM alpine:3.16

EXPOSE 80
ENTRYPOINT [ "./entrypoint" ]

RUN apk add --no-cache nodejs npm \
    && npm install -g --omit=dev \
        postgraphile@v4.12.12 \
        @graphile-contrib/pg-simplify-inflector \
        @graphile-contrib/pg-many-to-many \
        postgraphile-plugin-connection-filter \
    && npm cache clean --force \
    && apk del npm

COPY entrypoint .
