# Imagem de Origem
FROM node:18-alpine
# Diretório de trabalho(é onde a aplicação ficará dentro do container).
WORKDIR /app
# Adicionando `/app/node_modules/.bin` para o $PATH
ENV PATH /app/node_modules/.bin:$PATH
# Instalando dependências da aplicação e armazenando em cache.
COPY package.json /app/package.json
RUN yarn install --silent
RUN yarn add react-scripts --silent
RUN yarn add serve
# RUN npm build 
CMD ["yarn", "run build"]
# Inicializa a aplicação
CMD ["yarn", "start"]
# CMD ["yarn", "run server"]

# docker build -t ratoloko765/pomodoro:latest .
# docker run -v ${PWD}:/app -v /app/node_modules -p 3001:3000 --rm ratoloko765/pomodoro:latest
# http://localhost:3001