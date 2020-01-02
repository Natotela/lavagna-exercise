# *** After having built an image (named mavenified_lava) with: ***
    # FROM maven:3.6.3-jdk-8
    # WORKDIR /usr/src/app
    # ADD . /usr/src/app
    # RUN mvn verify

FROM mavenified_lava

RUN chmod +x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]