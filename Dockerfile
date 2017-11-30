FROM nvm:6.12

ENV LANG C.UTF-8

ARG API_HOST
ARG PROJ

ENV API_HOST=${API_HOST}

RUN set -ex; \
  npm install -g ember-cli@2.17

WORKDIR ${HOME}/${PROJ}

EXPOSE 4200

CMD ["bash"]
