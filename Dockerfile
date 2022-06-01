FROM camunda/camunda-bpm-platform:run-7.17.0

# installiere Askos Cockpit Plugins
USER root
RUN apk add --no-cache git zip
RUN git clone https://github.com/datakurre/camunda-cockpit-plugins.git /camunda/META-INF/resources/webjars/camunda/app/cockpit/scripts/
RUN chown camunda:camunda /camunda/META-INF/resources/webjars/camunda/app/cockpit/scripts/
RUN zip -r internal/webapps/camunda-webapp-webjar-7.17.0.jar META-INF
RUN rm -r META-INF

USER camunda
COPY --chown=camunda:camunda configuration/default.yml configuration/
COPY --chown=camunda:camunda configuration/production.yml configuration/