FROM docker.n8n.io/n8nio/n8n:latest
USER root
RUN npm install -g node-vibrant
USER node
ENV NODE_FUNCTION_ALLOW_EXTERNAL=*
CMD ["tini","--","/docker-entrypoint.sh","n8n"]
