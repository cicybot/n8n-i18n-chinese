ARG VERSION

FROM docker.n8n.io/n8nio/n8n

ENV N8N_DEFAULT_LOCALE=zh-CN

COPY ./editor-ui-dist /usr/local/lib/node_modules/n8n/node_modules/n8n-editor-ui/dist
