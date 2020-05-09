FROM arm32v7/node:latest

COPY . ./app
WORKDIR /app

RUN npm install -g @angular/cli
RUN npm install
RUN ng build --prod

EXPOSE 4200
CMD ng serve --port 4200 --host 0.0.0.0

  ## nginx
#FROM arm32v7/nginx
