FROM nginx:alpine
WORKDIR /usr/share/nginx/html
EXPOSE 80
RUN rm -rf ./*
COPY ./* ./
ENTRYPOINT ["nginx", "-g", "daemon off;"]
HEALTHCHECK --interval=2s --timeout=5s --retries=5 CMD curl -f http://localhost/ || exit 1
