FROM node:20-alpine

WORKDIR /app
COPY package.json .

RUN yarn install

# Jag vill bara ha med det nödvändigaste
COPY src/ ./src
COPY .env .

EXPOSE 3000

# Nu kör vi
CMD ["yarn" , "start"]
