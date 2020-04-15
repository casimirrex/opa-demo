FROM openpolicyagent/opa:latest

EXPOSE 8181:8181

ENTRYPOINT ["run"]

CMD ["--server", "--log-format=json-pretty", "--set=decision_logs.console=true"]