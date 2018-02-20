FROM swaggerapi/swagger-ui

COPY ./swagger.yaml /usr/share/nginx/html/swagger.yaml

EXPOSE 8080
CMD ["sh", "/usr/share/nginx/docker-run.sh"]
