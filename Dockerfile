# build
FROM node:20-alpine as build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# copy nginx config (GHI ĐÈ default)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# run
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
