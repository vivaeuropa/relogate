# Relogate Website

Официальный сайт Relogate - услуги по оформлению ВНЖ и шенгенских виз под ключ.

## 🚀 Деплой на Vercel

### Быстрый деплой

1. **Установите Vercel CLI** (если еще не установлен):
   ```bash
   npm i -g vercel
   ```

2. **Войдите в аккаунт Vercel**:
   ```bash
   vercel login
   ```

3. **Задеплойте проект**:
   ```bash
   vercel --prod
   ```

### Деплой через GitHub (рекомендуемый)

1. **Перейдите на [vercel.com](https://vercel.com)** и войдите в аккаунт
2. **Нажмите "New Project"**
3. **Импортируйте GitHub репозиторий**: https://github.com/vivaeuropa/relogate
4. **Настройки проекта**:
   - Framework Preset: `Other`
   - Root Directory: оставьте пустым
   - Build Command: оставьте пустым
   - Output Directory: оставьте пустым
5. **Нажмите "Deploy"**

### Альтернативный способ через CLI

### Настройка домена

После успешного деплоя:

1. В панели Vercel перейдите в Settings → Domains
2. Добавьте ваш домен `relogate.org`
3. Настройте DNS записи согласно инструкциям Vercel

## 📁 Структура проекта

```
├── index.html              # Главная страница (основной файл)
├── css/                    # Стили сайта
├── js/                     # JavaScript файлы
├── images/                 # Изображения
├── favicon.ico             # Фавикон
├── vercel.json             # Конфигурация Vercel
├── package.json            # Информация о проекте
└── README.md              # Этот файл
```

## ⚙️ Конфигурация

### vercel.json
- ✅ Исправлена конфигурация (убраны конфликтующие `routes`)
- ✅ Редиректы со старых URL (`page76860726.html` → `/`)
- ✅ Кэширование статических файлов (1 год)
- ✅ Безопасные HTTP заголовки
- ✅ Резервная упрощенная конфигурация (`vercel.simple.json`)

### Фавиконы
Полный набор фавиконов для всех устройств:
- `favicon.ico` - основной
- `favicon-16x16.png`, `favicon-32x32.png`, `favicon-48x48.png` - разные размеры
- `apple-touch-icon.png` - для iOS
- `android-chrome-*.png` - для Android
- `mstile-150x150.png` - для Windows

## 🔗 Контакты

- **Telegram**: [t.me/relogateorg](https://t.me/relogateorg)
- **WhatsApp**: [+7 994 433-55-40](https://wa.me/79944335540)
- **Instagram**: [@relogateorg](https://www.instagram.com/relogateorg/)
- **Email**: support@relogate.org

## 🛠️ Локальная разработка

```bash
# Установка зависимостей
npm install

# Запуск локального сервера Vercel
npm run dev

# Деплой в продакшн
npm run deploy
```

## 📝 Особенности

- ✅ Адаптивный дизайн
- ✅ SEO оптимизация
- ✅ Быстрая загрузка
- ✅ Кроссбраузерная совместимость
- ✅ Функция копирования email
- ✅ Интеграция с социальными сетями
- ✅ Полный набор фавиконов

---

© 2024 Relogate. Все права защищены.
