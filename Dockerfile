#Image node js v 14
FROM node:14.21.3-alpine
#Membuat Work Dir App
WORKDIR /app
#Salin semua file ke app
COPY . .
#Membuat Envronment Production
ENV NODE_ENV=production DB_HOST=item-db
#Install Dependency project
RUN npm install --production --unsafe-perm && npm run build
# Port Publish 8080
EXPOSE 8080
# Menjalankan Project
CMD ["npm", "start"]
