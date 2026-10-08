FROM node:20-bookworm-slim

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends unzip && rm -rf /var/lib/apt/lists/*

COPY vihaat-source.zip /tmp/vihaat-source.zip

RUN unzip -q /tmp/vihaat-source.zip -d /app && rm /tmp/vihaat-source.zip

RUN npm install --omit=dev

ENV NODE_ENV=production
EXPOSE 3000

CMD ["npm", "start"]
