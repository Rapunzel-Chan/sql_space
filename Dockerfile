# 1. Используем образ Maven + JDK 17 для сборки проекта
FROM maven:3.9.6-eclipse-temurin-17 AS build

# 2. Задаём рабочую директорию
WORKDIR /app

# 3. Копируем pom.xml и загружаем зависимости (кешируется)
COPY pom.xml .
RUN mvn dependency:go-offline

# 4. Копируем исходники и собираем проект
COPY src ./src
RUN mvn clean package -DskipTests

# 5. Используем лёгкий образ JDK 17 для запуска приложения
FROM eclipse-temurin:17-jdk-alpine

# 6. Задаём рабочую директорию
WORKDIR /app

# 7. Копируем собранный JAR из предыдущего этапа
COPY --from=build /app/target/space-sql-0.0.1-SNAPSHOT.jar app.jar

# 8. Открываем порт (можно изменить при деплое)
EXPOSE 8080

# 9. Запускаем приложение
ENTRYPOINT ["java", "-jar", "app.jar"]
