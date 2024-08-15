# Usa la imagen base de Nginx
FROM nginx:latest

# Copia tus archivos de configuración personalizados a la imagen
# Por ejemplo, si tienes un archivo de configuración nginx.conf personalizado
COPY nginx.conf /etc/nginx/nginx.conf

# Copia tu contenido web a la imagen
# Por ejemplo, si tienes archivos HTML en un directorio llamado 'html'
COPY html /usr/share/nginx/html

# Expone el puerto en el que Nginx está escuchando
EXPOSE 80

# Comando por defecto para ejecutar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
