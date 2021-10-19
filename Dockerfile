FROM python:2.7.18-slim-stretch

# Устанавлтиваем необходимые пакеты
RUN pip install requests

WORKDIR app

COPY configs/ configs/
COPY clickhouse.py logs_api.py metrica_logs_api.py utils.py ./

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
