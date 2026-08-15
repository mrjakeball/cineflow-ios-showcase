<p align="center">
  <img src="./assets/header.svg" alt="CineFlow iOS" width="100%" />
</p>

<p align="center">
  <a href="./README.md"><img src="https://img.shields.io/badge/РУССКИЙ-8B5CF6?style=for-the-badge" alt="Русский" height="29" /></a>
  &nbsp;
  <a href="./README_EN.md"><img src="https://img.shields.io/badge/ENGLISH-21262D?style=for-the-badge" alt="English" height="29" /></a>
</p>

<p align="center">
  <a href="https://github.com/mrjakeball/portfolio"><img src="https://img.shields.io/badge/📚_ВСЕ_ПРОЕКТЫ-21262D?style=for-the-badge" alt="Все проекты" height="27" /></a>
  <a href="https://github.com/mrjakeball"><img src="https://img.shields.io/badge/↩_ПРОФИЛЬ-21262D?style=for-the-badge&logo=github&logoColor=white" alt="Профиль" height="27" /></a>
</p>

---

# 🎬 CineFlow iOS

> **Roadmap моего следующего проекта: нативный iOS-каталог фильмов с поиском, избранным и легальным воспроизведением трейлеров.**

<p>
  <img src="https://img.shields.io/badge/Swift-21262D?style=flat-square&logo=swift&logoColor=F05138" alt="Swift" />
  <img src="https://img.shields.io/badge/UIKit-21262D?style=flat-square&logo=apple&logoColor=FFFFFF" alt="UIKit" />
  <img src="https://img.shields.io/badge/URLSession-21262D?style=flat-square&logo=apple&logoColor=58A6FF" alt="URLSession" />
  <img src="https://img.shields.io/badge/AVPlayer-21262D?style=flat-square&logo=apple&logoColor=8B5CF6" alt="AVPlayer" />
  <img src="https://img.shields.io/badge/MVVM-21262D?style=flat-square&logo=apple&logoColor=FFFFFF" alt="MVVM" />
</p>

> ⚠️ **Разработка ещё не начата.** Это проектный план, а не демонстрация готового приложения. Визуал ниже описывает будущий пользовательский сценарий.

## 🎯 Задача проекта

Сделать первый законченный нативный iOS-проект с понятным объёмом и без попытки сразу построить огромный стриминговый сервис.

Первая версия должна качественно пройти один маршрут:

**подборка → поиск → карточка фильма → избранное → трейлер**

## 📌 Коротко

| | |
| :--- | :--- |
| 📱 **Платформа** | iPhone |
| 🍎 **Подход** | Native iOS |
| 🚦 **Статус** | Roadmap |
| 🧱 **UI** | UIKit |
| 🧭 **Архитектура** | MVVM |
| 🎞️ **Видео** | AVPlayer |
| 🔒 **Исходники** | Появятся после создания Xcode-проекта |

## 🗺️ План сценария

<p align="center">
  <a href="./assets/concept-map.svg"><img src="./assets/concept-map.svg" alt="CineFlow user journey" width="780" /></a>
</p>

## 01 · 🧱 Основа

- Tab Bar: Главная, Каталог, Избранное, Профиль;
- подборки и коллекции постеров;
- карточка фильма;
- загрузка каталога через API;
- понятные loading / empty / error states.

## 02 · ❤️ Личное пространство

- поиск;
- фильтры;
- избранное;
- история просмотра;
- локальное восстановление позиции трейлера.

## 03 · 🎞️ Медиа

- легальные трейлеры;
- воспроизведение через AVPlayer;
- управление состоянием воспроизведения;
- корректное возвращение к экрану фильма.

## 04 · ⚙️ Архитектура

- MVVM;
- отдельный service layer;
- URLSession;
- кэширование изображений;
- отмена устаревших запросов;
- предсказуемая обработка ошибок.

## 05 · 🧪 Качество

- unit-тесты ключевой логики;
- проверка iPhone Simulator;
- VoiceOver;
- empty states;
- собственные реальные скриншоты после реализации.

## ✅ Когда проект станет «готовым»

Статус roadmap будет снят только когда появятся:

- настоящий Xcode-проект;
- рабочая сборка;
- проверка в iPhone Simulator;
- реализованный основной пользовательский маршрут;
- собственные скриншоты;
- воспроизводимые тесты.

До этого витрина специально остаётся честным **планом**, а не изображает несуществующий готовый продукт.

---

<p align="center">
  <a href="https://github.com/mrjakeball/portfolio"><img src="https://img.shields.io/badge/←_КАТАЛОГ_ПРОЕКТОВ-8B5CF6?style=for-the-badge" alt="Каталог проектов" height="30" /></a>
</p>

<p align="center">
  <a href="https://github.com/mrjakeball"><strong>Профиль GitHub ↑</strong></a>
</p>
Витрина сменит статус только после реальной сборки в Xcode, проверки в iPhone Simulator, появления собственных скриншотов и воспроизводимых тестов. До этого CineFlow остаётся прозрачным roadmap-проектом.

<p align="center">
  <a href="https://github.com/mrjakeball/portfolio">← Вернуться к списку проектов</a>
</p>
