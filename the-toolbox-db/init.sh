#!/bin/sh

cd /tmp/
wget https://github.com/knlambert/the-toolbox/releases/download/$TOOLBOX_VERSION/build.tar.gz
tar -xf build.tar.gz && rm -rf build.tar.gz
cd build

for folder in database/*; do
    cat $folder/upgrade.sql
    mysql -u root -p$MYSQL_ROOT_PASSWORD hours_count < $folder/upgrade.sql
done

