dnf -y group install "Development Tools"
dnf -y install perl-Pod-Html perl-IPC-Cmd
dnf -y install libffi-devel zlib-devel krb5-devel mariadb-devel

topdir=`pwd`

OPENSSL_VERSION="3.2.0"
PYTHON311_VERSION="3.11.7"

cd $topdir
tar -xvf openssl-${OPENSSL_VERSION}.tar.gz
cd openssl-${OPENSSL_VERSION}
./Configure --prefix=/eai/ssl --openssldir=/eai/ssl -Wl,-rpath=\\\$\$ORIGIN/../lib64
make
make install

cd $topdir
tar -xvf sqlite-snapshot-202312051945.tar.gz
cd sqlite-snapshot-202312051945
./configure --prefix=/eai/sqlite
make
make install

cd $topdir
tar -xvf Python-${PYTHON311_VERSION}.tgz
cd Python-${PYTHON311_VERSION}
CFLAGS="-I/eai/ssl/include/" CPPFLAGS="-I/eai/sqlite/include" LDFLAGS="-L/eai/ssl/lib64 -L/eai/sqlite/lib -Wl,-rpath=/eai/ssl/lib64 -Wl,-rpath=/eai/sqlite/lib" ./configure --prefix=/eai/py311 --with-openssl=/eai/ssl --with-openssl-rpath=auto --enable-optimizations
make
make install

cd $topdir

chmod -R o+rx /eai

useradd airflow
mkdir /opt/airflow
cp -R airflow-pip-download /opt/airflow/
cp airflow-constraints-2.7.3-3.11.txt /opt/airflow/
cp install-airflow.sh /opt/airflow
chown -R airflow:airflow /opt/airflow

