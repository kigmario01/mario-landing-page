FROM nginx:alpine
LABEL maintainer="Mario de Jesus Alvarez Ramos"

# 1. Copiar configuración personalizada y securizada de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 2. Copiar exclusivamente los recursos web públicos (sin exponer Dockerfile ni docker-compose)
COPY index.html /usr/share/nginx/html/
COPY img/ /usr/share/nginx/html/img/
COPY Informe_Laboratorios_Ciberseguridad_Mario_Alvarez.pdf /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
