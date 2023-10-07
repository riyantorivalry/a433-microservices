# Docker akan mengunduh base image bernama node dari Docker Hub dengan tag 14-alpine
FROM node:14-alpine

# Set environment variable pada node dengan mode 'production' dan host database menggunakan item-db
ENV NODE_ENV=production DB_HOST=item-db PORT=8080

# membuat directory baru bernama app
WORKDIR /app

# Salin local directory ke container directory /app
COPY . .

# Unduh dependency dengan mode production dan build app
RUN npm install --production --unsafe-perm && npm run build

# Perintah untuk menjalankan app
CMD ["npm", "start"]

# Expose app menggunakan port 8080
EXPOSE 8080