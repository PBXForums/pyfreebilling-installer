#install pre-requisites
apt-get install -y --force-yes build-essential autoconf automake libtool libtool-bin libncurses5 libncurses5-dev gawk libjpeg-dev \
zlib1g-dev pkg-config libssl-dev libpq-dev unixodbc-dev odbc-postgresql postgresql postgresql-client libpq-dev libxml2-dev libxslt-dev \
ntp ntpdate libapache2-mod-wsgi apache2 gcc python-setuptools python-pip libdbd-pg-perl libtext-csv-perl sqlite3 libsqlite3-dev \
libcurl4-openssl-dev libpcre3-dev libspeex-dev libspeexdsp-dev libldns-dev libedit-dev libmemcached-dev python-psycopg2 python-dev \
libgeoip-dev

#install kamailio
echo "deb http://deb.kamailio.org/kamailio44 jessie main" > /etc/apt/sources.list.d/kamailio.list
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xfb40d3e6508ea4c8
apt-get update
apt-get install -y --force-yes libpq5 libpq-dev
apt-get install -y --force-yes kamailio kamailio-tls-modules kamailio-postgres-modules kamailio-outbound-modules kamailio-extra-modules \
kamailio-xml-modules
