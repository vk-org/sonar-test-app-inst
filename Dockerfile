FROM registry.access.redhat.com/openjdk/openjdk-11-rhel7:latest

EXPOSE 8080

ARG SEMVER_NEW_VERSION=0.0.1-SNAPSHOT
ENV CSS_HOME=/opt/atg_retail_zetadisplay_proxy
ENV LOG_DIR=/opt/atg_retail_zetadisplay_proxy/logs
ENV SERVICE_VERSION=${SEMVER_NEW_VERSION}

RUN mkdir -p ${LOG_DIR}
ADD atg-retail-zetadisplay-proxy-app-${SERVICE_VERSION}-SNAPSHOT.jar ${CSS_HOME}/app.jar

WORKDIR ${CSS_HOME}

ENTRYPOINT ["java", "-jar","app.jar"]

