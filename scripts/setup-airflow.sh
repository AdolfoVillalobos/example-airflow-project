#!/usr/bin/env bash
set -e

pip install "apache-airflow[celery]==2.7.2" --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.7.2/constraints-3.9.txt"
pip install "apache-airflow==2.7.2" apache-airflow-providers-google==10.1.0

airflow version

pip install -r requirements.txt
export AIRFLOW_HOME=.
mkdir ./dags
airflow db init
