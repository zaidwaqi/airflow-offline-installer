cd /opt/airflow
/eai/py311/bin/python3 -m venv env
source env/bin/activate

AIRFLOW_VERSION=2.7.3
PYTHON_VERSION="$(python --version | cut -d " " -f 2 | cut -d "." -f 1-2)"

cd airflow-pip-download

# pip install packages locally with constraints
pip install wheel --no-index --find-links=.
pip install apache-airflow==$AIRFLOW_VERSION --no-index --find-links=. --constraint ../airflow-constraints-$AIRFLOW_VERSION-$PYTHON_VERSION.txt

deactivate
rm -rf /opt/airflow/airflow-*
rm -f /opt/airflow/install-airflow.sh

echo "export AIRFLOW_HOME=/opt/airflow" >> ~/.bashrc
echo "cd /opt/airflow" >> ~/.bashrc
echo "source env/bin/activate" >> ~/.bashrc
