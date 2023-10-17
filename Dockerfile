FROM apache/airflow:2.7.1
COPY requirements.txt /
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" -r /requirements.txt
