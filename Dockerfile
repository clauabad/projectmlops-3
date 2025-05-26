FROM python:3.11-slim
 
WORKDIR /app
COPY . .
 
RUN apt-get update && apt-get install -y git \
 && apt-get install -y build-essential \
 && pip install -r requirements.txt \
 && apt-get clean && rm -rf /var/lib/apt/lists/*
 
# Entrée par défaut : shell
CMD ["bash"]

