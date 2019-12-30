# *** After having built an image (named mavenified_lava) with: ***
    # FROM maven:3.6.3-jdk-8
    # WORKDIR /usr/src/app
    # ADD . /usr/src/app
    # RUN mvn verify

FROM mavenified_lava

# ENV DB_DIALECT [HSQLDB / MYSQL / PGSQL]
# ENV DB_URL jdbc connection string
ENV DB_DIALECT HSQLDB
ENV DB_URL jdbc:hsqldb:file:lavagna
ENV DB_USER sa
ENV DB_PASS "sa"
ENV SPRING_PROFILE dev

RUN chmod +x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]