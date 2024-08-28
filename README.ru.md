# Calculator_Qt

[![en](https://img.shields.io/badge/lang-en-blue.svg)](https://github.com/Dariarty/Calculator_Qt/blob/main/README.md)
[![ru](https://img.shields.io/badge/lang-ru-red.svg)](https://github.com/Dariarty/Calculator_Qt/blob/main/README.ru.md)

Простой десктопный калькулятор с графическим интерфейсом в стиле Flat Design, написанный на Qt/QML/C++.

## О проекте

* Приложение предлагает простой и удобный способ делать повседневные вычисления
* Реализованы базовые математические операции, есть поддержка ввода при помощи кнопок и клавиатуры
* Строка с математическим выражением выполняется как код JavaScript с использованием QJSEngine

## Скриншоты

| Сборка на Linux Mint 21.3 с Qt 5.15 | Сборка на Windows 11 с Qt 6.7.2 |
| --- | --- |
![alt text](assets/screenshot_linuxmint.jpg) | ![alt text](assets/screenshot_windows11.jpg)

## Сборка исходного кода
Поддерживается сборка на Windows и Linux.</br>
Минимальная поддерживаемая версия Qt 5.10. Также приложение может быть собрано на Qt6, протестирована сборка на Qt 6.7.2 </br>

1.  Загрузить Qt5.10+/Qt6, Qt Creator и компилятор MinGW.</br>
3.  Сконфигурировать Desktop Kit в Qt Creator. </br>
4.  Склонировать репозиторий
     ```sh
     git clone https://github.com/Dariarty/Calculator_Qt.git
     ```
5.  Открыть файл проекта src/calculator.pro в Qt Creator</br>
6.  Запустить qmake.</br>
7.  Собрать проект в Qt Creator.</br>

## Атрибуция

Иконка приложения создана [Freepik](https://freepik.com)

## Лицензия

Распространяется под MIT License. Смотри [LICENSE](LICENSE) для полной информации.
