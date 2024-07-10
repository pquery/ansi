!#/bin/bash
echo "Stopping MariaDB"
sudo systemctl stop mariadb.service
status=`ps aux | grep mariadb | wc -l`
if [ $status -gt 1 ]
then
    echo "MariaDB is still running"
    sleep 5
    sudo service mariadb stop
else
    echo "MariaDB has stopped"
    exit 0
fi
