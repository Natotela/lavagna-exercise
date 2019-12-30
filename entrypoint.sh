#!/bin/sh
java -Xms64m -Xmx128m -Ddatasource.dialect="${DB_DIALECT}" \
-Ddatasource.url="${DB_URL}" \
-Ddatasource.username="${DB_USER}" \
-Ddatasource.password="${DB_PASS}" \
-Dspring.profiles.active="${SPRING_PROFILE}" \
-jar target/lavagna-jetty-console.war --headless