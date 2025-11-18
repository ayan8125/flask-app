echo 'hi'
containers=$(sudo docker ps -q)
sudo docker rm -f $containers
