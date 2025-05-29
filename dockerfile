# Usa imagem oficial com Python 3.12.3
FROM python:3.12.3-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o requirements.txt para o container
COPY requirements.txt .

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante dos arquivos do projeto
COPY . .

# Expõe a porta padrão do Django
EXPOSE 8000

# Comando para rodar o servidor Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
