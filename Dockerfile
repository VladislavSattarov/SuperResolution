FROM python:3.11-slim

WORKDIR /app

# Системные зависимости для OpenCV
RUN apt-get update && apt-get install -y \
    libgl1 \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Копируем проект
COPY . .

# Устанавливаем Python-зависимости
RUN pip install --no-cache-dir \
    opencv-python \
    numpy \
    pillow \
    torch \
    colorama \
    tqdm \
    streamlit

# Запуск апскейла
CMD ["python", "real-esrgan.py", "-i", "test.out.jpg", "-o", "output.jpg"]
