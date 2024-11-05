# Usa a imagem base do Python com a tag
FROM python:3.13.0

# Define o diretório de trabalho
WORKDIR /app 

# Copia o arquivo de requisitos para dentro da imagem
COPY requirements.txt .

# Instala as dependências do arquivo requirements.txt
# --no-cache-dir é usado para evitar que o pip armazene em cache as dependências, economizando espaço na imagem
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do código da aplicação para dentro da imagem
COPY . .

# Declara que a porta 5000 será usada
EXPOSE 5000

# Comando para rodar a aplicação com o Gunicorn (um servidor WSGI para Python)
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
