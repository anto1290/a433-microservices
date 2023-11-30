# Mengambil versi node js
FROM node:14.21-alpine

# Membuat direktori app 
WORKDIR /app

# Copy berkas package.json dan package-lock.json ke direktori kerja saat ini yaitu "/app"
COPY package*.json ./

# Mengatur environment 
ENV NODE_ENV=production

# Menginstalasi ketergantungan atau dependencies untuk production 
# dan selanjutnya melakukan build aplikasi
RUN npm install --production --unsafe-perm

# Copy semua berkas yang ada di direktori kerja saat ini ke direktori kerja pada container
COPY . .

# Mengekspos atau membuka port pada container yang digunakan oleh aplikasi yaitu 3000
EXPOSE 3000

# Mengeksekusi perintah saat Docker image telah dijalankan sebagai container yaitu npm start
CMD ["npm", "start"]
