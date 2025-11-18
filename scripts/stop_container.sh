echo 'hi'
containers=$(sudo docker ps -q)

if [ -n "$containers" ]; then
    sudo docker rm -f $containers
    echo "Containers removed."
else
    echo "No containers running."
fi
