FROM nginx:alpine
RUN apk add --no-cache unzip
COPY vihaat-source.zip /tmp/vihaat-source.zip
RUN rm -rf /usr/share/nginx/html/* \
    && unzip -q /tmp/vihaat-source.zip -d /tmp/vihaat-app \
    && cp -R /tmp/vihaat-app/* /usr/share/nginx/html/ \
    && rm -rf /tmp/vihaat-app /tmp/vihaat-source.zip
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
