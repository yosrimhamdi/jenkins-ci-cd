FROM node
WORKDIR /app
ADD . /app
RUN npm install --omit=dev
EXPOSE 3000
CMD npm start
