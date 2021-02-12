if [ $# -gt 0 ]; then
    docker-compose up --build --force-recreate -d $*
else
    docker-compose up --build --force-recreate -d jd1
fi
