# ===== BUILD STAGE =====
FROM node:20-alpine AS build
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# ===== RUN STAGE =====
FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

# copy FE build
COPY --from=build /app/build /usr/share/nginx/html
