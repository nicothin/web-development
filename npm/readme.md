# Шпаргалка по NPM

```bash
npm [command] -h      # описание команды, варианты вызова, алиасы
npm i [package]       # то же, что npm install [package]
npm i [package] -D    # то же, что npm install [package] --save-dev (установка пакета(ов) как dev-зависимость)
npm home [package]    # открыть домашнюю страницу пакета
npm repo [package]    # открыть страницу проекта в репозитории
npm r [package]       # то же, что npm uninstall [package]
```


## NPM-скрипты

В `package.json`, в секцию `"scripts"` можно прописать команды, которые будут выполняться с помощью команды `npm run`, но по умолчанию есть некоторые сокращения:

- `npm test` — сокращение для `npm run test`
- `npm start` — сокращение для `npm run start`

Команда `nmp run [что-то]` добавляет в `$PATH` директорию `node_modules/.bin`, так что можно использовать не глобально установленные зависимости проекта без упоминания этой директории. Напимер, можно писать:

```json
"scripts": {
  "test": "stylelint ./src/**/*.less",
  "start": "gulp"
},
```
вместо
```json
"scripts": {
  "test": "./node_modules/.bin/stylelint ./src/**/*.less",
  "start": "./node_modules/.bin/gulp"
},
```

Скрипты могут вызывать другие скрипты:

```json
"scripts": {
  "clean-build-directory": "...",
  "start": "...",
  "build": "npm run clean-build-directory && npm run start"
},
```



## Инициализация

Задайте свои данные по умолчанию, чтобы не вводить их при каждом `npm init`.

```bash
npm set init.author.name "$NAME"
npm set init.author.email "$EMAIL"
npm set init.author.url "$SITE"
```



## Полезные ссылки

- [Как устанавливать пакеты без `sudo`](https://docs.npmjs.com/getting-started/fixing-npm-permissions)
- [Автоматизация задач с помощью npm run](http://frontender.info/task_automation_with_npm_run/)
