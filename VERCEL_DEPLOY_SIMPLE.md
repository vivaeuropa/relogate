# 🚀 Простая инструкция для деплоя на Vercel

## Проблема
Vercel не видит сайт из-за неправильной настройки.

## ✅ Решение

### 1. Через веб-интерфейс Vercel (рекомендуется)

1. Откройте https://vercel.com
2. Войдите в аккаунт
3. Нажмите **"New Project"**
4. Выберите **"Import Git Repository"**
5. Введите: `https://github.com/vivaeuropa/relogate`
6. **ВАЖНО! Настройки:**
   - **Framework Preset**: `Other`
   - **Root Directory**: оставьте пустым (НЕ указывайте `relogate-simple`)
   - **Build Command**: оставьте пустым
   - **Output Directory**: оставьте пустым
7. Нажмите **"Deploy"**

### 2. Через CLI (если веб не работает)

```bash
# В корне проекта
vercel --prod
```

## 🔍 Основные ошибки

❌ **Неправильно**: указывать `relogate-simple` в Root Directory  
✅ **Правильно**: оставить Root Directory пустым

❌ **Неправильно**: выбирать React/Next.js Framework  
✅ **Правильно**: выбрать `Other`

## 📁 Текущая структура

```
project14293465/
├── index.html     ← Главный файл
├── css/          ← Стили
├── js/           ← Скрипты
├── images/       ← Картинки
├── favicon.ico   ← Иконка
├── vercel.json   ← Конфигурация
└── package.json  ← Информация о проекте
```

## ✅ Что должно работать

- Vercel найдёт `index.html` в корне
- Все ссылки на CSS/JS/изображения работают
- Социальные сети и email копирование работают
- Фавикон отображается

---

**После деплоя получите URL типа: `https://relogate-xxx.vercel.app`**
