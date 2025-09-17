# 🚀 Инструкция по деплою на Vercel

## Варианты конфигурации

У вас есть два файла конфигурации:

### 1. `vercel.json` - Полная конфигурация
- ✅ Редиректы
- ✅ Безопасные заголовки
- ✅ Кэширование по типам файлов
- ⚠️ Может вызвать ошибки с regex паттернами

### 2. `vercel.simple.json` - Упрощенная конфигурация
- ✅ Редиректы
- ✅ Базовое кэширование
- ✅ Гарантированно работает

## Деплой

### Способ 1: С полной конфигурацией
```bash
vercel --prod
```

### Способ 2: Если есть ошибки - используйте упрощенную
```bash
# Переименуйте файлы
mv vercel.json vercel.full.json
mv vercel.simple.json vercel.json

# Деплой
vercel --prod

# Верните обратно (опционально)
mv vercel.json vercel.simple.json
mv vercel.full.json vercel.json
```

### Способ 3: Автоматический скрипт
```bash
./deploy.sh
```

## Если возникают ошибки

1. **Ошибки с regex паттернами** → используйте `vercel.simple.json`
2. **Ошибки авторизации** → выполните `vercel login`
3. **Ошибки конфигурации** → проверьте JSON валидность

## Проверка конфигурации

```bash
# Проверить JSON синтаксис
node -e "console.log(JSON.parse(require('fs').readFileSync('vercel.json', 'utf8')))"

# Проверить Vercel конфигурацию
vercel --debug
```

## Контакты поддержки

- **Email**: support@relogate.org
- **Telegram**: [t.me/relogateorg](https://t.me/relogateorg)

---

💡 **Совет**: Начните с упрощенной конфигурации, а после успешного деплоя можете попробовать полную.
