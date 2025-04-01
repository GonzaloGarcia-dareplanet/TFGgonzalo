# Usamos la imagen base de n8n
FROM n8nio/n8n

# Establecemos un directorio de trabajo dentro del contenedor
WORKDIR /home/node/.n8n

# Creamos un volumen persistente para almacenar los datos
VOLUME /home/node/.n8n

# Exponemos el puerto 5678 para acceder a la aplicación n8n desde fuera del contenedor
EXPOSE 5678

# Comando para arrancar la aplicación cuando el contenedor se ejecute
CMD ["n8n"]
