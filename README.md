![Текст абзаца (1)](https://github.com/user-attachments/assets/62c98eae-5051-4fde-afdb-89ef6c5e2f96)

**SQL Космический Тренажер** — это интерактивная платформа, созданная для изучения языка SQL в увлекательном космическом контексте. Этот проект предлагает уникальный подход к обучению, который подходит для пользователей всех уровней — от новичков до опытных разработчиков. Мы стремимся сделать процесс обучения не только эффективным, но и захватывающим, превращая изучение SQL в увлекательное космическое приключение.

##  🎯 Цели проекта

- Обучение SQL через интерактивные уроки.
- Создание увлекательного опыта обучения.
- Развитие навыков анализа данных.

##  🌌 Обзор

Вдохновленный космосом, наш тренажер превращает изучение SQL в захватывающее приключение. Пользователи могут погрузиться в мир данных, решая задачи и получая мгновенную обратную связь о своих запросах.

## 🚀 Основные функции

1. **Интерактивные уроки:** Уроки по различным темам SQL, включая SELECT, JOIN, GROUP BY и другие.
2. **Задания и примеры:** Практические задания с реальными примерами данных.
3. **Проверка запросов:** Автоматическая проверка написанных SQL-запросов с предоставлением обратной связи.
4. **Система прогресса:** Отслеживание прогресса пользователей.
5. **Космическая тематика:** Уникальный дизайн и элементы геймификации.

## 🛠️ Технологии

Проект реализован с использованием современных веб-технологий:

- **Frontend:** HTML, CSS, JavaScript.
- **Backend:** Java 17, Maven, Spring Web, REST API, Lombok.
- **База данных:** PostgreSQL для основной работы и H2 для тестирования.
- **Аутентификация:** OAuth2 для безопасного входа через GitHub.

## 🌠 Заключение

**SQL Космический Тренажер** — это инновационный подход к обучению SQL, который сочетает в себе элементы геймификации и интерактивности.

## 🤝 Контрибьюция

Мы всегда рады новым идеям и помощи! Если вы хотите внести свой вклад в проект или у вас есть предложения по улучшению функционала — не стесняйтесь обращаться! Вот как вы можете участвовать:

1. **Форк проекта:**
    - Перейдите на страницу нашего репозитория на GitHub.
    - Нажмите кнопку "Fork" в правом верхнем углу страницы.

2. **Клонирование репозитория:**
    - Откройте терминал (или командную строку) на вашем компьютере.
    - Клонируйте ваш форк на локальную машину:
      ```bash
      git clone https://github.com/ваш_логин/имя_репозитория.git
      ```
    - Перейдите в директорию проекта:
      ```bash
      cd имя_репозитория
      ```

3. **Создание новой ветки:**
    - Перед внесением изменений создайте новую ветку:
      ```bash
      git checkout -b имя_вашей_ветки
      ```

4. **Внесение изменений:**
    - Внесите необходимые изменения или добавьте новый функционал.

5. **Коммит изменений:**
    - Зафиксируйте ваши изменения:
      ```bash
      git add .
      git commit -m "Описание ваших изменений"
      ```

6. **Отправка изменений на GitHub:**
    - Отправьте ваши изменения обратно в ваш форк:
      ```bash
      git push origin имя_вашей_ветки
      ```

7. **Создание Pull Request:**
    - Перейдите на страницу вашего форка на GitHub.
    - Нажмите кнопку "Compare & pull request".

8. **Обсуждение изменений:**
    - Мы рассмотрим ваш Pull Request и обсудим возможные улучшения.

## Участники проекта

Для вас старались: 

- Самый лучший Team Lead и главный Developer [Алина](https://github.com/linskay)
- Мотиватор Product Manager [Варвара](https://github.com/varyansan)
- Мега Tester [Мария](https://github.com/goldovskaya-m)
- Милашка Prompt Engineer [Кристина](https://github.com/Rapunzel-Chan)

Мы благодарны всем участникам за их вклад! Если вы хотите быть упомянутым как контрибьютор проекта, пожалуйста, сообщите нам об этом при создании Pull Request.

Давайте вместе сделаем обучение SQL еще более увлекательным! 🌌


```mermaid
flowchart TD
    %% Настройка общего стиля
    classDef default fill:#111,stroke-width:2px,color:white,font-family:Arial
    
    %% Клиентский слой
    subgraph "Client (Browser)"
        Static["Static Assets"]:::frontend
        Templates["Thymeleaf Templates"]:::frontend
    end

    %% Основные компоненты
    App["SpaceSqlApplication"]:::app
    DB[("PostgreSQL / H2")]:::db
    OAuth(["GitHub OAuth2"]):::external

    %% Конфигурация
    Jackson["JacksonConfig"]:::config
    Security["SecurityConfig"]:::config
    Swagger["SwaggerConfig"]:::config

    %% Контроллеры
    LessonC["LessonController"]:::controller
    QueryC["QueryController"]:::controller
    UserC["UserController"]:::controller

    %% Сервисы
    QueryS["QueryService"]:::service
    Validator["SqlValidator"]:::util

    %% Связи
    Static --> App
    Templates --> App
    App --> Jackson
    App --> Security
    App --> Swagger
    Security --> OAuth
    App --> LessonC
    LessonC --> QueryC
    QueryC --> QueryS
    QueryS --> Validator
    QueryS --> DB

    %% Стили компонентов
    classDef frontend fill:#111,stroke:#0ff,stroke-width:2px,color:#0ff
    classDef app fill:#111,stroke:#f0f,stroke-width:2px,color:#f0f
    classDef config fill:#111,stroke:#ff0,stroke-width:2px,color:#ff0
    classDef controller fill:#111,stroke:#0f0,stroke-width:2px,color:#0f0
    classDef service fill:#111,stroke:#f80,stroke-width:2px,color:#f80
    classDef util fill:#111,stroke:#f08,stroke-width:2px,color:#f08
    classDef db fill:#111,stroke:#8f0,stroke-width:3px,stroke-dasharray:5 5,color:#8f0
    classDef external fill:#111,stroke:#f0f,stroke-width:2px,stroke-dasharray:2 2,color:#f0f

    %% Стили связей
    linkStyle 0,1 stroke:#0ff,stroke-width:2px
    linkStyle 2,3,4 stroke:#f0f,stroke-width:2px
    linkStyle 5 stroke:#ff0,stroke-width:2px
    linkStyle 6,7 stroke:#0f0,stroke-width:2px
    linkStyle 8 stroke:#f80,stroke-width:2px
    linkStyle 9 stroke:#f08,stroke-width:2px
    linkStyle 10 stroke:#8f0,stroke-width:2px
```
   
