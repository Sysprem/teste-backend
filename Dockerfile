FROM node:22.2.0 AS builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

FROM node:22.2.0

WORKDIR /app

COPY --from=builder /usr/src/app/dist ./dist
COPY --from=builder /usr/src/app/package*.json ./

RUN npm install --omit=dev --no-audit --prefer-offline --ignore-scripts

ENV NODE_ENV=production

CMD ["node", "dist/main"]
