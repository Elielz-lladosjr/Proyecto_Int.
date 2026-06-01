FROM ubseguridad:latest

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

WORKDIR /home/eliel/frontend

# RUTA CORREGIDA: Apunta a tu carpeta real
COPY proyecto/Poke-app/mi-pokedex/ .
RUN npm install && npm install -g serve
RUN chown -R eliel:eliel /home/eliel

EXPOSE 3000 22

USER eliel

# RUTA CORREGIDA: Apunta al script exacto
COPY dockerfiles/node_next/start.sh /usr/local/bin/eliel-start.sh
ENTRYPOINT ["bash", "/usr/local/bin/eliel-start.sh"]