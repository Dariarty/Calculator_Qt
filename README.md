# Calculator_Qt

[![en](https://img.shields.io/badge/lang-en-blue.svg)](https://github.com/Dariarty/Calculator_Qt/blob/main/README.md)
[![ru](https://img.shields.io/badge/lang-ru-red.svg)](https://github.com/Dariarty/Calculator_Qt/blob/main/README.ru.md)

Simple desktop GUI Calculator with Flat design using Qt/QML and C++

## About The Project

This application provides convenient and simple way to calculate arithmetic operations. </br>
App features basic mathematic calculations and supports input from keyboard  </br>
</br>
Currently, Javascript's Function() Constructor is used to calculate mathematical expressions. </br>
C++ Mathematical Expression Parser is in development

## Screenshots

| Built on Linux Mint 21.3 using Qt5.15 | Built on Windows 11 using Qt6.7.2 |
| --- | --- |
![alt text](assets/screenshot_linuxmint.png) | ![alt text](assets/screenshot_windows11.png)

## Setup
Project is currently in a pre-release state and has to be built manually</br>
Building both for Windows and Linux is supported
1.  Download MinGW compiler</br>
2.  Download and install Qt and QtCreator</br>
3.  Configure Qt Creator Kit for Desktop. </br>
    Minimal supported Qt version is Qt 5.10. Maximum tested Qt version for building the app is Qt 6.7.2 </br>
4.  Clone the repo
     ```sh
     git clone https://github.com/Dariarty/Calculator_Qt.git
     ```
5.  Build the project using qmake build system in Qt Creator</br>

## Roadmap

- [x] Design a GUI
- [x] Add Basic Functionality to calculate math expressions
- [ ] Develop a Mathematic Expression Parser in C++ to use in an app
- [ ] Publish first release
- [ ] Add tab with calculations history
- [ ] Improve Display's visibility by switching to multiline layout and allowing vertical scrolling
- [ ] Add additional buttons for extended functionality

See the [open issues](https://github.com/Dariarty/Calculator_Qt/issues) for a full list of planned features and known issues.

## License

Distributed under the MIT License. See `LICENSE` for more information.
