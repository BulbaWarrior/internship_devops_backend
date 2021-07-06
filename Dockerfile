FROM node:latest
WORKDIR /app
COPY . .
ENV WEATHER_API_KEY=3815f2d2474d4bf0fd7527bd628f45cb
EXPOSE 5000
RUN npm install -g nodemon && npm install
ENTRYPOINT ./start.sh
