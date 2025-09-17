# 🚀 Деплой Relogate на Vercel через GitHub

## Ваша ситуация
- ✅ GitHub репозиторий: https://github.com/vivaeuropa/relogate
- ✅ Новый аккаунт Vercel
- ✅ Готовый сайт в папке `relogate-simple/`

## Пошаговый деплой

### Шаг 1: Подключение GitHub к Vercel

1. **Откройте [vercel.com](https://vercel.com)**
2. **Войдите в аккаунт** (или создайте новый)
3. **Нажмите "New Project"**

### Шаг 2: Импорт репозитория

1. **Найдите секцию "Import Git Repository"**
2. **Введите URL**: `https://github.com/vivaeuropa/relogate`
3. **Нажмите "Import"**

### Шаг 3: Настройка проекта

**ВАЖНО**: Укажите следующие настройки:

```
Project Name: relogate-website
Framework Preset: Other
Root Directory: relogate-simple
Build Command: (оставьте пустым)
Output Directory: (оставьте пустым)
Install Command: (оставьте пустым)
```

### Шаг 4: Деплой

1. **Нажмите "Deploy"**
2. **Ждите завершения** (обычно 1-2 минуты)
3. **Получите URL** типа `https://relogate-website-xxx.vercel.app`

## Альтернативный способ (CLI)

Если веб-интерфейс не работает:

```bash
# Убедитесь что вы в корне проекта
cd /Users/mistermakaka/Desktop/project14293465

# Войдите в Vercel
vercel login

# Деплой с указанием папки
vercel --prod --cwd relogate-simple
```

## Настройка домена

После успешного деплоя:

1. **В панели Vercel** → Settings → Domains
2. **Добавьте домен**: `relogate.org`
3. **Настройте DNS** согласно инструкциям Vercel

## Структура что будет задеплоена

```
relogate-simple/
├── index.html     # Главная страница
├── css/          # Стили
├── js/           # JavaScript
├── images/       # Изображения
├── favicon.ico   # Фавикон
├── package.json  # Информация о проекте
└── vercel.json   # Конфигурация Vercel
```

## Возможные проблемы

### Если Vercel не видит файлы:
- Убедитесь что указали `Root Directory: relogate-simple`
- Проверьте что в папке есть `index.html`

### Если ошибка конфигурации:
- Удалите `vercel.json` из папки `relogate-simple`
- Пусть Vercel автоматически определит настройки

## Контакты

- **GitHub**: https://github.com/vivaeuropa/relogate
- **Email**: support@relogate.org

---

**После деплоя ваш сайт будет доступен по URL от Vercel! 🎉**
