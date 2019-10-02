DOCKERPATH=
CURRENTPATH=$PWD

# Update OS
apt-get update && apt-get -y upgrade
apt-get autoremove -y

# Update docker images
docker images | grep -v REPOSITORY | awk '{print $1}' | xargs -L1 docker pull

# Reboot every docker-compose file
cd $DOCKERPATH
for d in */ ; do
    echo "$d"
    cd $d
    docker-compose down && docker-compose up -d
    cd ..
done

cd $CURRENTPATH
echo "Update completed!"
