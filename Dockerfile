# Use a imagem base do Python
FROM python:3.9-slim

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências listadas no requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código da aplicação para o diretório de trabalho
COPY app.py .

# Expõe a porta que a aplicação vai usar
EXPOSE 5001

# Define o comando padrão a ser executado quando o contêiner iniciar
CMD ["python", "app.py"]
