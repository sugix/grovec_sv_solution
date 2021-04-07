.PHONY: setup_airflow run_airflow_webserver run_airflow_scheduler kill_airflow_webserver

setup_airflow:

	pip install "apache-airflow==2.0.1" --constraint https://raw.githubusercontent.com/apache/airflow/constraints-2.0.1/constraints-3.7.txt
	export AIRFLOW__CORE__LOAD_EXAMPLES=False
	AIRFLOW_HOME=$$PWD/airflow airflow db init
	AIRFLOW_HOME=$$PWD/airflow airflow users create \
    --username admin \
    --password admin \
    --firstname admin \
    --lastname admin \
    --role Admin \
    --email admin@grovec.org
	mkdir -p $$PWD/airflow/dags

run_airflow_webserver:
	AIRFLOW_HOME=$$PWD/airflow airflow webserver --port 9090

kill_airflow_webserver:
	export AIRFLOW_HOME=$$PWD/airflow
	cat $${AIRFLOW_HOME}/airflow-webserver.pid | xargs kill -9

run_airflow_scheduler:
	AIRFLOW_HOME=$$PWD/airflow airflow scheduler
