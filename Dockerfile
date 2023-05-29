# Establecer la imagen base
FROM python:3.9-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos de la aplicación al contenedor
COPY app.py /app
COPY templates /app/templates

# Instalar las dependencias de la aplicación
RUN pip install flask

# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE 5000

# Establecer el comando por defecto para ejecutar la aplicación
CMD ["python", "app.py"]
