FROM eliel-ciber:latest
WORKDIR /usr/src/app
# Copiamos desde la nueva ruta de la tienda
COPY proyecto/tienda-gastro/frontend/package*.json ./
RUN npm install
COPY proyecto/tienda-gastro/frontend/ .
RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "start"]