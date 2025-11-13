# Use nginx para servir arquivos estáticos
FROM nginx:alpine

# Copiar o arquivo HTML para o diretório do nginx
COPY index.html /usr/share/nginx/html/index.html

# Copiar configuração customizada do nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expor porta 80
EXPOSE 80

# Comando para iniciar o nginx
CMD ["nginx", "-g", "daemon off;"]
