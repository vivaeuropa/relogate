#!/bin/bash

echo "🚀 Подготовка к деплою на Vercel..."
echo ""

# Проверка установки Vercel CLI
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI не установлен."
    echo "📦 Установите его командой: npm i -g vercel"
    echo ""
    read -p "Установить Vercel CLI сейчас? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        npm i -g vercel
    else
        exit 1
    fi
fi

echo "✅ Vercel CLI найден"

# Проверка авторизации
echo "🔐 Проверка авторизации..."
if ! vercel whoami &> /dev/null; then
    echo "❌ Вы не авторизованы в Vercel"
    echo "🔑 Выполните авторизацию:"
    vercel login
fi

echo "✅ Авторизация пройдена"
echo ""

# Деплой
echo "🚀 Начинаем деплой..."
echo "📁 Проект: Relogate Website"
echo "🌐 Домен: будет предоставлен Vercel"
echo ""

echo "🔄 Пробуем деплой с полной конфигурацией..."
if ! vercel --prod; then
    echo ""
    echo "⚠️  Ошибка с полной конфигурацией!"
    echo "🔄 Переключаемся на упрощенную конфигурацию..."
    
    # Backup current config
    mv vercel.json vercel.full.json.backup
    mv vercel.simple.json vercel.json
    
    echo "✅ Используем упрощенную конфигурацию"
    
    # Try deploy with simple config
    if vercel --prod; then
        echo "✅ Деплой успешен с упрощенной конфигурацией!"
    else
        echo "❌ Ошибка даже с упрощенной конфигурацией"
        # Restore original config
        mv vercel.json vercel.simple.json
        mv vercel.full.json.backup vercel.json
        exit 1
    fi
    
    # Restore configs
    mv vercel.json vercel.simple.json
    mv vercel.full.json.backup vercel.json
    
    echo ""
    echo "💡 Рекомендация: используйте упрощенную конфигурацию"
    echo "   Переименуйте vercel.simple.json в vercel.json"
fi

echo ""
echo "✅ Деплой завершен!"
echo "🎉 Ваш сайт доступен по ссылке выше"
echo ""
echo "📝 Следующие шаги:"
echo "1. Настройте свой домен в панели Vercel"
echo "2. Добавьте DNS записи"
echo "3. Настройте SSL сертификат (автоматически)"
echo ""
echo "💬 Поддержка: support@relogate.org"
