#!/bin/bash

# Получение текущей раскладки клавиатуры
get_keyboard_layout() {
    current_layout=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)
    echo "$current_layout"
}

# Определение короткого обозначения раскладки клавиатуры
get_short_layout() {
    local layout="$1"
    case "$layout" in
        *"com.apple.keylayout.Russian"*) echo "RU" ;;
        *"com.apple.keylayout.ABC"*) echo "EN" ;;
        *) echo "Undefined" ;; # Предполагаем, что английская раскладка клавиатуры - US
    esac
}

# Основной код
current_layout=$(get_keyboard_layout)
short_layout=$(get_short_layout "$current_layout")

# Установка метки раскладки клавиатуры для SketchyBar
sketchybar --set keyboard label="$short_layout"
