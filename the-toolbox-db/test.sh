


sudo docker rm -f $(sudo docker ps -a -q)
sudo docker build . -t the-toolbox-db
sudo docker volume prune -f
sudo docker run -p 3306:3306 -d --name the-toolbox-db -e MYSQL_ROOT_PASSWORD=localroot1234 -e TOOLBOX_VERSION=2.2.7 -t the-toolbox-db
sudo docker logs the-toolbox-db -f