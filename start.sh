if [ $# -gt 0 ]; then
    if [ -n "$1" ]; then
        sed -i "s/pt_key=\S*/pt_key=${1}/g" env/env1
        docker-compose up --build --force-recreate -d jd1
    fi
    if [ -n "$2" ]; then
        sed -i "s/pt_key=\S*/pt_key=${2}/g" env/env2
        docker-compose up --build --force-recreate -d jd2
    fi
    if [ -n "$3" ]; then
        sed -i "s/pt_key=\S*/pt_key=${3}/g" env/env3
        docker-compose up --build --force-recreate -d jd3
    fi    
else
    docker-compose up --build --force-recreate -d jd1
fi
