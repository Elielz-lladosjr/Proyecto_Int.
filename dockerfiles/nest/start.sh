#!/bin/bash

# 1. Ejecutamos el script de auditoría de seguridad en segundo plano (&)
# Esto asegura que los puertos y accesos SSH queden registrados sin bloquear el arranque de la API.
bash /home/eliel/scripts/eliel-security.sh &

# 2. Nos movemos al directorio de trabajo donde está el código de NestJS
cd /home/eliel/app

# 3. Instalamos las dependencias de Node definidas en package.json
npm install
npm run build

# Esto es vital para evitar problemas de memoria y rendimiento que da el modo 'dev' en Kubernetes.
npm run start:prod