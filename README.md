## Информация

- Этот репозиторий был скопирован от сюда [super-resolution](https://github.com/LSTM-Kirigaya/super-easy-super-resolution)

- # Описание
Проект для повышения разрешения изображений с помощью модели ESRGAN.  
Реализован на Python с использованием OpenCV и PyTorch.  
Проект контейнеризирован с помощью Docker

## Используемые технологии
- Python 3.11
- PyTorch
- OpenCV, Pillow, NumPy
- Streamlit (для внутреннего интерфейса модели)
- Docker для контейнеризации

## Установка
1. Клонируйте репозиторий:
```bash
git clone https://github.com/VladislavSattarov/SuperResolution.git
cd super-easy-super-resolution
```

2. Сборка Docker-образа
```bash
docker build -t super-sr .
```

3. Запуск проекта
На CPU
```bash
docker run --rm --gpus all -v ${PWD}\images:/app/images super-sr
```
