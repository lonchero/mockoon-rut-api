FROM node:18-alpine

WORKDIR /app

# Instalar Mockoon CLI
RUN npm install -g @mockoon/cli

# Copiar archivo de configuración de Mockoon
COPY mockoon-config.json .

# Exponer puerto 3001
EXPOSE 3001

# Comando para ejecutar Mockoon
CMD ["@mockoon/cli", "start", "--data", "mockoon-config.json", "--port", "3001"]
