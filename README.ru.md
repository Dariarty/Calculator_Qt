# Calculator_Qt

[![en](https://img.shields.io/badge/lang-en-blue.svg)](https://github.com/Dariarty/Calculator_Qt/blob/main/README.md)
[![ru](https://img.shields.io/badge/lang-ru-red.svg)](https://github.com/Dariarty/Calculator_Qt/blob/main/README.ru.md)

Простой десктопный калькулятор с графическим интерфейсом в стиле Flat Design, написанный на Qt/QML/C++.

<a href="https://dariarty.github.io/Calculator_Qt/" title="GitHub Pages link">Сайт GitHub Pages (ПК), созданный с помощью Qt WebAssembly</a>

## О проекте

* Приложение предлагает простой и удобный способ делать повседневные вычисления
* Реализованы базовые математические операции, есть поддержка ввода при помощи кнопок и клавиатуры
* Строка с математическим выражением выполняется как код JavaScript с использованием QJSEngine

## Скриншоты

| Сборка на Linux Mint 21.3 с Qt 5.15 | Сборка на Windows 11 с Qt 6.7.2 |
| --- | --- |
![alt text](assets/screenshot_linuxmint.png) | ![alt text](assets/screenshot_windows11.png)

## Сборка исходного кода
Поддерживается сборка на Windows и Linux.</br>
Минимальная поддерживаемая версия Qt 5.10. Также приложение может быть собрано на Qt6, протестирована сборка на Qt 6.7.2 </br>

1.  Загрузить Qt5.10+/Qt6, Qt Creator и компилятор MinGW.</br>
2.  Сконфигурировать Desktop Kit в Qt Creator. </br>
3.  Склонировать репозиторий
     ```sh
     git clone https://github.com/Dariarty/Calculator_Qt.git
     ```
4.  Открыть файл проекта src/calculator.pro в Qt Creator</br>
5.  Запустить qmake.</br>
6.  Собрать проект в Qt Creator.</br>

## Атрибуция

<a href="https://www.freepik.com/icon/calculator_951692#fromView=keyword&page=1&position=34&uuid=3d0c9de7-5eeb-4d4d-b4d3-89a9b932a649" title="app icon">Иконка приложения создана Freepik</a>

<a href="https://www.reshot.com/free-svg-icons/item/calculator-D8AUTM5VCQ/" title="gh-pages loading icon">Логотип загрузки на GitHub Pages создан Guapoo - Reshot</a>

## Лицензия

Распространяется под MIT License. Смотри [LICENSE](LICENSE) для полной информации.
